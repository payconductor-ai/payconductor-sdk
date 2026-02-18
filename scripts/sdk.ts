#!/usr/bin/env bun

const enquirer = require("enquirer");
const rimraf = require("rimraf");

const VERSIONS: Record<string, { apiUrl: string; languages: Record<string, { generator: string; outputDir: string }> }> = {
  v1: {
    apiUrl: "https://app.payconductor.ai/api/v1/docs/json",
    languages: {
      typescript: { generator: "typescript-axios", outputDir: "packages/v1/typescript" },
      javascript: { generator: "javascript", outputDir: "packages/v1/javascript" },
      python: { generator: "python", outputDir: "packages/v1/python" },
      csharp: { generator: "csharp", outputDir: "packages/v1/csharp" },
      ruby: { generator: "ruby", outputDir: "packages/v1/ruby" },
      php: { generator: "php", outputDir: "packages/v1/php" },
      lua: { generator: "lua", outputDir: "packages/v1/lua" },
      go: { generator: "go", outputDir: "packages/v1/go" },
      java: { generator: "java", outputDir: "packages/v1/java" },
      kotlin: { generator: "kotlin", outputDir: "packages/v1/kotlin" },
      r: { generator: "r", outputDir: "packages/v1/r" },
      rust: { generator: "rust", outputDir: "packages/v1/rust" },
      perl: { generator: "perl", outputDir: "packages/v1/perl" },
      dart: { generator: "dart-dio", outputDir: "packages/v1/dart" },
      elixir: { generator: "elixir", outputDir: "packages/v1/elixir" },
      clojure: { generator: "clojure", outputDir: "packages/v1/clojure" },
      c: { generator: "c", outputDir: "packages/v1/c" },
    },
  },
};

const downloadOpenApi = async (version: string) => {
  const config = VERSIONS[version];
  const outputJson = `src/${version}/openapi.json`;
  const outputYaml = `src/${version}/openapi.yaml`;

  console.log(`Downloading OpenAPI ${version}...`);
  
  const response = await fetch(config!.apiUrl);
  const data: any = await response.json();
  
  // if (data.servers && data.servers[0]) {
  //   data.servers[0].url = "https://app.payconductor.ai/api/v1";
  // }
  
  await Bun.write(outputJson, JSON.stringify(data, null,2));
  console.log(`Downloaded to ${outputJson}`);
  
  await Bun.spawn(["bunx", "openapi-format", outputJson, "-o", outputYaml]);
  console.log(`Formatted to ${outputYaml}`);
};

const generateSdk = async (version: string, languages: string[]) => {
  const config = VERSIONS[version]!;
  const openapiFile = `src/${version}/openapi.yaml`;

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
      "--additional-properties=packageName=payconductor_sdk,projectName=payconductor-sdk,npmName=payconductor-sdk,npmRepository=https://github.com/payconductor-ai/payconductor-sdk.git"
    ]);
    
    await proc.exited;
    console.log(`SDK generated in ${langConfig.outputDir}/`);
  }
};

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
  console.log("  bun run sdk download              # Download OpenAPI");
  console.log("  bun run sdk generate v1           # Generate SDKs");
};

run();
