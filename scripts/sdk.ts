#!/usr/bin/env bun

/**
 * Two commands:
 *   bun run sdk download   — fetch the OpenAPI JSON, patch enum types, save as JSON + YAML
 *   bun run sdk generate   — run openapi-generator-cli for selected languages
 */

const enquirer = require("enquirer");
const rimraf = require("rimraf");

//#region Configuration
const VERSIONS: Record<string, {
  apiUrl: string;
  languages: Record<string, { generator: string; outputDir: string }>;
}> = {
  v1: {
    apiUrl: "https://app.payconductor.ai/api/v1/docs/json",
    languages: {
      typescript: { generator: "typescript-axios",  outputDir: "library/v1/packages/typescript" },
      javascript: { generator: "javascript",         outputDir: "library/v1/packages/javascript" },
      python:     { generator: "python",             outputDir: "library/v1/packages/python"     },
      csharp:     { generator: "csharp",             outputDir: "library/v1/packages/csharp"     },
      ruby:       { generator: "ruby",               outputDir: "library/v1/packages/ruby"       },
      php:        { generator: "php",                outputDir: "library/v1/packages/php"        },
      lua:        { generator: "lua",                outputDir: "library/v1/packages/lua"        },
      go:         { generator: "go",                 outputDir: "library/v1/packages/go"         },
      java:       { generator: "java",               outputDir: "library/v1/packages/java"       },
      kotlin:     { generator: "kotlin",             outputDir: "library/v1/packages/kotlin"     },
      r:          { generator: "r",                  outputDir: "library/v1/packages/r"          },
      rust:       { generator: "rust",               outputDir: "library/v1/packages/rust"       },
      perl:       { generator: "perl",               outputDir: "library/v1/packages/perl"       },
      dart:       { generator: "dart-dio",           outputDir: "library/v1/packages/dart"       },
      elixir:     { generator: "elixir",             outputDir: "library/v1/packages/elixir"     },
      clojure:    { generator: "clojure",            outputDir: "library/v1/packages/clojure"    },
      c:          { generator: "c",                  outputDir: "library/v1/packages/c"          },
    },
  },
};
//#endregion

//#region Helpers
const toPascalCase = (key: string) => key.charAt(0).toUpperCase() + key.slice(1);

// OpenAPI structural keywords that appear as property keys in the document but
// don't represent domain fields. We never want to create a schema named "Items"
// or "Properties" — but we still need to recurse into their values to find real
// domain enums nested inside them.
const SKIP_AS_ENUM_NAME = new Set([
  "items", "properties", "schema", "schemas", "components", "paths",
  "webhooks", "info", "servers", "tags", "security", "parameters",
  "responses", "requestBody", "content", "headers", "default", "required",
  "allOf", "oneOf", "anyOf", "not",
]);

// Matches the discriminated-union pattern the spec uses for array item types:
//   availablePaymentMethods.items: { anyOf: [{ type: string, const: Pix }, ...] }
// openapi-generator doesn't resolve this into a typed enum on its own.
const isConstStringAnyOf = (node: any): boolean =>
    Array.isArray(node?.anyOf) &&
    node.anyOf.length > 1 &&
    node.anyOf.every((item: any) => item.type === "string" && typeof item.const === "string");

// Matches a regular inline enum the spec uses for status fields and similar:
//   status: { type: string, enum: [Pending, Completed, Failed] }
const isStringEnum = (node: any): boolean =>
    node?.type === "string" &&
    Array.isArray(node?.enum) &&
    node.enum.every((v: any) => typeof v === "string");

// Matches a single const value inside a discriminated union branch:
//   payment.anyOf[0].properties.paymentMethod: { type: string, const: Pix }
// Each branch has its own const. The collect pass merges all of them into one enum.
const isSingleConst = (node: any): boolean =>
    node?.type === "string" && typeof node?.const === "string";

// x-enum-varnames keeps member names equal to the wire value (Pix, CreditCard, …)
// so there's no mismatch between what you write in code and what gets serialized.
const buildEnumSchema = (values: string[]) => ({
  type: "string",
  enum: values,
  "x-enum-varnames": values,
});
//#endregion

//#region Patcher
/**
 * Lifts all inline string enums into components/schemas and replaces them with $refs.
 *
 * Three inline patterns are handled:
 *   1. anyOf const-union  — { anyOf: [{ type: string, const: A }, { type: string, const: B }] }
 *   2. Plain string enum  — { type: string, enum: [A, B, C] }
 *   3. Single const       — { type: string, const: A } (appears per-branch in discriminated unions)
 *
 * Pass 1 (collect): walk the doc, accumulate enum values per property key into a registry.
 *   Multiple occurrences of the same key (e.g. `paymentMethod: { const: "Pix" }` and
 *   `paymentMethod: { const: "CreditCard" }` in separate anyOf branches) merge into one Set.
 *
 * Pass 2 (replace): walk again, swap every matched inline node with a $ref.
 *   components/schemas is skipped to prevent the freshly-written schemas from
 *   being overwritten with circular self-references.
 */
const patchOpenApi = (data: any): any => {
  data.components ??= {};
  data.components.schemas ??= {};

  const enumRegistry = new Map<string, Set<string>>();

  const registerValues = (name: string, values: string[]) => {
    if (!enumRegistry.has(name)) enumRegistry.set(name, new Set());
    for (const v of values) enumRegistry.get(name)!.add(v);
  };

  // --- Pass 1: Collect ---
  // SKIP_AS_ENUM_NAME only controls whether a key becomes a schema name — we always recurse.
  // A previous early-return-on-skip approach caused isSingleConst nodes nested inside
  // `properties` to never be reached, breaking paymentMethod collection.
  const collect = (node: any) => {
    if (Array.isArray(node)) { node.forEach(collect); return; }
    if (typeof node !== "object" || node === null) return;

    for (const key of Object.keys(node)) {
      const child = node[key];
      if (typeof child !== "object" || child === null) continue;

      if (SKIP_AS_ENUM_NAME.has(key)) {
        collect(child);
        continue;
      }

      const name = toPascalCase(key);

      if (isConstStringAnyOf(child)) {
        registerValues(name, child.anyOf.map((i: any) => i.const as string));
        collect(child);
      } else if (isStringEnum(child)) {
        registerValues(name, child.enum as string[]);
        collect(child);
      } else if (isSingleConst(child)) {
        registerValues(name, [child.const as string]);
        // leaf — no recursion needed
      } else {
        // Array whose items are a const-union enum.
        if (child.type === "array" && isConstStringAnyOf(child.items)) {
          registerValues(name, (child.items as any).anyOf.map((i: any) => i.const as string));
        }
        collect(child);
      }
    }
  };

  const { schemas: _ignored, ...otherComponents } = data.components;
  collect({ ...data, components: { ...otherComponents } });

  for (const [name, values] of enumRegistry) {
    if (values.size < 2) continue;
    data.components.schemas[name] = buildEnumSchema([...values]);
  }

  // --- Pass 2: Replace ---
  const replace = (node: any, insideSchemas = false): any => {
    if (Array.isArray(node)) return node.map((n) => replace(n, insideSchemas));
    if (typeof node !== "object" || node === null) return node;
    if (insideSchemas) return node;

    for (const key of Object.keys(node)) {
      const child = node[key];
      if (typeof child !== "object" || child === null) continue;

      // Don't touch components/schemas — we wrote those, modifying them creates circular $refs.
      const enteringSchemas =
          key === "schemas" &&
          Object.keys(node).some((k) => ["securitySchemes", "schemas", "parameters"].includes(k));
      if (enteringSchemas) {
        node[key] = replace(child, true);
        continue;
      }

      if (SKIP_AS_ENUM_NAME.has(key)) {
        // Replace array items that are a const-union by finding the matching registered schema.
        if (key === "items" && (isConstStringAnyOf(child) || isStringEnum(child))) {
          const nodeSet = new Set(
              isConstStringAnyOf(child)
                  ? child.anyOf.map((i: any) => i.const as string)
                  : (child.enum as string[])
          );
          const match = [...enumRegistry.entries()].find(
              ([, values]) => values.size === nodeSet.size && [...nodeSet].every((v) => values.has(String(v)))
          );
          if (match) { node[key] = { $ref: `#/components/schemas/${match[0]}` }; continue; }
        }
        node[key] = replace(child, false);
        continue;
      }

      const name = toPascalCase(key);
      const registered = enumRegistry.get(name);

      if (registered && registered.size >= 2) {
        if (isConstStringAnyOf(child) || isStringEnum(child)) {
          node[key] = { $ref: `#/components/schemas/${name}` };
          continue;
        }
        if (isSingleConst(child) && registered.has(child.const as string)) {
          node[key] = { $ref: `#/components/schemas/${name}` };
          continue;
        }
        if (child.type === "array" && isConstStringAnyOf(child.items)) {
          child.items = { $ref: `#/components/schemas/${name}` };
          node[key] = replace(child, false);
          continue;
        }
      }

      node[key] = replace(child, false);
    }

    return node;
  };

  const patched = replace(data);

  // --- Pass 3: Discriminator ---
  // openapi-generator merges all anyOf branches into one flat interface when there's no
  // discriminator. Adding `discriminator.propertyName` tells the generator to emit a proper
  // union type. It also requires every branch to be a $ref (not inline), so we promote each
  // branch to a named schema in components/schemas using the branch's `title` as the name.
  const addDiscriminators = (node: any) => {
    if (Array.isArray(node)) { node.forEach(addDiscriminators); return; }
    if (typeof node !== "object" || node === null) return;

    for (const key of Object.keys(node)) {
      const child = node[key];
      if (typeof child === "object" && child !== null) addDiscriminators(child);
    }

    if (!Array.isArray(node.anyOf)) return;
    const branches = node.anyOf as any[];
    if (!branches.every((b: any) => b.type === "object" && b.properties)) return;

    // Find a property that every branch has as a $ref — that's the discriminator key.
    const candidateKeys = Object.keys(branches[0].properties);
    const discriminatorKey = candidateKeys.find((k) =>
        branches.every((b: any) => b.properties[k]?.["$ref"] !== undefined)
    );
    if (!discriminatorKey) return;

    // Promote each branch to a named schema. Name comes from `title`, falling back to
    // the const value of the discriminator property, then a generated index-based name.
    const mapping: Record<string, string> = {};
    node.anyOf = branches.map((branch: any, i: number) => {
      if (branch["$ref"]) return branch;
      const constVal = branch.properties[discriminatorKey]?.const as string | undefined;
      const schemaName = branch.title
          ? (branch.title as string).replace(/\s+/g, "")
          : constVal ?? `${toPascalCase(discriminatorKey)}Variant${i}`;

      patched.components.schemas[schemaName] = branch;
      // title == wire value in this spec, so schemaName doubles as the mapping key.
      mapping[schemaName] = `#/components/schemas/${schemaName}`;
      return { $ref: `#/components/schemas/${schemaName}` };
    });

    node.discriminator = { propertyName: discriminatorKey, mapping };
  };

  addDiscriminators(patched);
  return patched;
};
//#endregion

//#region Commands
const downloadOpenApi = async (version: string) => {
  const config = VERSIONS[version];
  const outputJson = `library/${version}/src/openapi.json`;
  const outputYaml = `library/${version}/src/openapi.yaml`;

  console.log(`Downloading OpenAPI ${version}...`);

  const response = await fetch(config!.apiUrl);
  let data: any = await response.json();

  console.log("Patching OpenAPI schema...");
  data = patchOpenApi(data);

  const addedSchemas = Object.keys(data.components.schemas);
  console.log(`Schemas added: ${addedSchemas.join(", ")}`);

  await Bun.write(outputJson, JSON.stringify(data, null, 2));
  console.log(`Saved to ${outputJson}`);

  await Bun.spawn(["bunx", "openapi-format", outputJson, "-o", outputYaml]);
  console.log(`Formatted to ${outputYaml}`);
};

const generateSdk = async (version: string, languages: string[]) => {
  const config = VERSIONS[version]!;
  const openapiFile = `library/${version}/src/openapi.yaml`;

  for (const lang of languages) {
    const langConfig = config.languages[lang]!;

    console.log(`\n--- Generating ${lang} ---`);
    rimraf.sync(langConfig.outputDir);

    const proc = await Bun.spawn([
      "./node_modules/.bin/openapi-generator-cli", "generate",
      "-i", openapiFile,
      "-g", langConfig.generator,
      "-o", langConfig.outputDir,
      "--skip-validate-spec",
      "--additional-properties=packageName=payconductor_sdk,projectName=payconductor-sdk,npmName=payconductor-sdk,npmRepository=https://github.com/payconductor-ai/payconductor-sdk.git,legacyDiscriminatorBehavior=false",
    ]);

    await proc.exited;
    console.log(`SDK generated in ${langConfig.outputDir}/`);
  }
};
//#endregion

//#region Entry point
const run = async () => {
  const command = process.argv[2];
  const versionKeys = Object.keys(VERSIONS);

  if (!command || command === "download") {
    console.log("\n=== Download OpenAPI ===");

    const version = await enquirer.autocomplete({
      name: "version",
      message: "Select version",
      initial: 0,
      choices: versionKeys,
    });

    await downloadOpenApi(version);
    console.log("Done!");
    return;
  }

  if (command === "generate") {
    console.log("\n=== Generate SDK ===");

    const version = await enquirer.autocomplete({
      name: "version",
      message: "Select version",
      initial: 0,
      choices: versionKeys,
    });

    const langKeys = Object.keys(VERSIONS[version]!.languages);
    console.log("\nUse space to select, enter to confirm\n");

    const languages = await enquirer.multiselect({
      name: "languages",
      message: "Select languages",
      initial: 0,
      choices: langKeys,
    });

    if (languages.length === 0) {
      console.log("No languages selected.");
      process.exit(1);
    }

    console.log(`\nGenerating SDKs: ${languages.join(", ")}`);
    await generateSdk(version, languages);
    console.log("\nDone!");
    return;
  }

  console.log("Usage:");
  console.log("  bun run sdk download   # Download and patch the OpenAPI spec");
  console.log("  bun run sdk generate   # Generate SDKs from the patched spec");
};

run();
//#endregion