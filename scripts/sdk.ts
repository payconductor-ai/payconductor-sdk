#!/usr/bin/env bun

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

const titleToSchemaName = (title: string): string =>
  title.split(/\s+/).map(w => w.charAt(0).toUpperCase() + w.slice(1)).join("");

const SKIP_AS_ENUM_NAME = new Set([
  "items", "properties", "schema", "schemas", "components", "paths",
  "webhooks", "info", "servers", "tags", "security", "parameters",
  "responses", "requestBody", "content", "headers", "default", "required",
  "allOf", "oneOf", "anyOf", "not",
]);

const isConstStringAnyOf = (node: any): boolean =>
  Array.isArray(node?.anyOf) &&
  node.anyOf.length > 1 &&
  node.anyOf.every((item: any) => item.type === "string" && typeof item.const === "string");

const isStringEnum = (node: any): boolean =>
  node?.type === "string" &&
  Array.isArray(node?.enum) &&
  node.enum.every((v: any) => typeof v === "string");

const isSingleConst = (node: any): boolean =>
  node?.type === "string" && typeof node?.const === "string";

const isNumericCoercionAnyOf = (node: any): boolean =>
  Array.isArray(node?.anyOf) &&
  node.anyOf.length === 2 &&
  node.anyOf.some((b: any) => (b.type === "integer" || b.type === "number") && !b.format) &&
  node.anyOf.some((b: any) => b.type === "string" && b.format === "integer");

const isObjectUnionAnyOf = (node: any): boolean =>
  Array.isArray(node?.anyOf) &&
  node.anyOf.length >= 2 &&
  node.anyOf.every(
    (b: any) => b["$ref"] !== undefined || (b.type === "object" && b.properties !== undefined)
  );

const buildEnumSchema = (values: string[]) => ({
  type: "string",
  enum: values,
  "x-enum-varnames": values,
});
//#endregion

//#region Patcher
const PAYMENT_METHOD_VALUES: Record<string, string> = {
  PIX: "Pix",
  CREDIT_CARD: "CreditCard",
  DEBIT_CARD: "DebitCard",
  BANK_SLIP: "BankSlip",
  CRYPTO: "Crypto",
  APPLE_PAY: "ApplePay",
  NU_PAY: "NuPay",
  PIC_PAY: "PicPay",
  AMAZON_PAY: "AmazonPay",
  SEPA_DEBIT: "SepaDebit",
  GOOGLE_PAY: "GooglePay",
  DRAFT: "Draft",
};

const inferPaymentMethodFromSchema = (schema: any): string | null => {
  const props = schema.properties || {};
  const title = (schema.title || "").toLowerCase();
  
  if (props.availablePaymentMethods !== undefined) return "Draft";
  if (props.card !== undefined && props.installments !== undefined) return "CreditCard";
  if (props.nuPay !== undefined) return "NuPay";
  if (props.expirationInDays !== undefined) return "BankSlip";
  
  if (props.expirationInSeconds !== undefined && props.card === undefined && props.availablePaymentMethods === undefined) return "Pix";
  
  if (Object.keys(props).length === 1 && props.paymentMethod) {
    if (title.includes("picpay")) return "PicPay";
    if (title.includes("pix")) return "Pix";
  }
  
  return null;
};

const fixPaymentMethodDiscriminators = (data: any) => {
  const schemas = data.components?.schemas || {};
  const discriminatorMappings: Map<string, string> = new Map();
  
  for (const [schemaName, schema] of Object.entries(schemas) as [string, any][]) {
    const props = schema.properties || {};
    if (!props.paymentMethod) continue;
    
    if (props.paymentMethod.$ref === "#/components/schemas/PaymentMethod" || 
        props.paymentMethod.$ref?.includes("PaymentMethod")) {
      const paymentValue = inferPaymentMethodFromSchema(schema);
      if (paymentValue) {
        props.paymentMethod = { type: "string", const: paymentValue };
        discriminatorMappings.set(schemaName, paymentValue);
      }
    }
  }
  
  const updateDiscriminatorMapping = (node: any) => {
    if (!node || typeof node !== "object") return;
    
    if (node.discriminator?.mapping) {
      const newMapping: Record<string, string> = {};
      for (const [key, ref] of Object.entries(node.discriminator.mapping)) {
        const schemaName = (ref as string).split("/").pop()!;
        const paymentValue = discriminatorMappings.get(schemaName);
        if (paymentValue) {
          newMapping[paymentValue] = ref as string;
        } else {
          newMapping[key] = ref as string;
        }
      }
      node.discriminator.mapping = newMapping;
    }
    
    for (const value of Object.values(node)) {
      if (typeof value === "object") {
        updateDiscriminatorMapping(value);
      }
    }
  };
  
  updateDiscriminatorMapping(data);
};

const patchOpenApi = (data: any): any => {
  data.components ??= {};
  data.components.schemas ??= {};

  const enumRegistry = new Map<string, Set<string>>();

  const registerValues = (name: string, values: string[]) => {
    if (!enumRegistry.has(name)) enumRegistry.set(name, new Set());
    for (const v of values) enumRegistry.get(name)!.add(v);
  };

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
      } else {
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

  const replace = (node: any, insideSchemas = false): any => {
    if (Array.isArray(node)) return node.map((n) => replace(n, insideSchemas));
    if (typeof node !== "object" || node === null) return node;
    if (insideSchemas) return node;

    for (const key of Object.keys(node)) {
      const child = node[key];
      if (typeof child !== "object" || child === null) continue;

      const enteringSchemas =
        key === "schemas" &&
        Object.keys(node).some((k) => ["securitySchemes", "schemas", "parameters"].includes(k));
      if (enteringSchemas) {
        node[key] = replace(child, true);
        continue;
      }

      if (SKIP_AS_ENUM_NAME.has(key)) {
        if (key === "items" && (isConstStringAnyOf(child) || isStringEnum(child))) {
          const nodeSet = new Set(
            isConstStringAnyOf(child)
              ? child.anyOf.map((i: any) => i.const as string)
              : (child.enum as string[])
          );
          const match = [...enumRegistry.entries()].find(
            ([, values]) =>
              values.size === nodeSet.size && [...nodeSet].every((v) => values.has(String(v)))
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

  const addDiscriminators = (node: any, contextKey = "") => {
    if (Array.isArray(node)) { node.forEach(n => addDiscriminators(n, contextKey)); return; }
    if (typeof node !== "object" || node === null) return;

    for (const key of Object.keys(node)) {
      const child = node[key];
      if (typeof child !== "object" || child === null) continue;

      if (isNumericCoercionAnyOf(child)) {
        const { anyOf, ...rest } = child;
        const numBranch = anyOf.find((b: any) => b.type === "integer" || b.type === "number");
        node[key] = { ...rest, ...numBranch };
        continue;
      }

      addDiscriminators(child, key);
    }

    if (!isObjectUnionAnyOf(node)) return;

    const branches = node.anyOf as any[];
    const inlineBranches = branches.filter((b: any) => !b["$ref"]);

    const discriminatorKey =
      inlineBranches.length > 0
        ? Object.keys(inlineBranches[0].properties ?? {}).find((k) =>
            inlineBranches.every((b: any) => b.properties?.[k]?.["$ref"] !== undefined)
          )
        : undefined;

    const mapping: Record<string, string> = {};

    node.anyOf = branches.map((branch: any, i: number) => {
      if (branch["$ref"]) {
        if (discriminatorKey) {
          const refName = branch["$ref"].split("/").pop()!;
          mapping[refName] = branch["$ref"];
        }
        return branch;
      }

      const title = branch.title as string | undefined;
      const schemaName = title
        ? titleToSchemaName(title)
        : (branch.properties?.[discriminatorKey ?? ""]?.const as string | undefined)
          ?? `${toPascalCase(contextKey)}Variant${i}`;

      if (!patched.components.schemas[schemaName]) {
        patched.components.schemas[schemaName] = branch;
      }

      const ref = `#/components/schemas/${schemaName}`;

      if (discriminatorKey) {
        const constVal = branch.properties?.[discriminatorKey]?.const as string | undefined;
        mapping[constVal ?? schemaName] = ref;
      }

      return { $ref: ref };
    });

    // typescript-axios only emits a union type for oneOf, not anyOf.
    node.oneOf = node.anyOf;
    delete node.anyOf;

    if (discriminatorKey && Object.keys(mapping).length > 0) {
      node.discriminator = { propertyName: discriminatorKey, mapping };
    }
  };

  addDiscriminators(patched);
  fixPaymentMethodDiscriminators(patched);
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

const fixPackageJson = async (outputDir: string) => {
  const packageJsonPath = `${outputDir}/package.json`;
  try {
    const file = Bun.file(packageJsonPath);
    if (!(await file.exists())) return;

    const pkg = await file.json();

    pkg.description = "PayConductor SDK for Node.js";
    pkg.author = "PayConductor";

    if (pkg.repository && typeof pkg.repository === "object") {
      pkg.repository.url = "git+https://github.com/payconductor-ai/payconductor-sdk.git";
    }

    pkg.homepage = "https://github.com/payconductor-ai/payconductor-sdk#readme";
    pkg.bugs = { url: "https://github.com/payconductor-ai/payconductor-sdk/issues" };

    await Bun.write(packageJsonPath, JSON.stringify(pkg, null, 2) + "\n");
    console.log(`Fixed package.json in ${outputDir}`);
  } catch (e) {
    console.log(`No package.json to fix in ${outputDir}`);
  }
};

const fixReadme = async (outputDir: string) => {
  const readmePath = `${outputDir}/README.md`;
  try {
    const file = Bun.file(readmePath);
    if (!(await file.exists())) return;

    let content = await file.text();
    const repoPath = `https://github.com/payconductor-ai/payconductor-sdk/blob/main/${outputDir}/`;

    content = content.replace(/\]\(docs\//g, `](${repoPath}docs/`);

    await Bun.write(readmePath, content);
    console.log(`Fixed README.md in ${outputDir}`);
  } catch (e) {
    console.log(`No README.md to fix in ${outputDir}`);
  }
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
      "--additional-properties=packageName=payconductor_sdk,projectName=payconductor-sdk,npmName=payconductor-sdk,npmVersion=1.0.0,licenseName=MIT,gitUserId=payconductor-ai,gitRepoId=payconductor-sdk,gitHost=github.com",
    ]);

    await proc.exited;

    if (lang === "typescript" || lang === "javascript") {
      await fixPackageJson(langConfig.outputDir);
      await fixReadme(langConfig.outputDir);
    }

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
