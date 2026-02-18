# Created with Openapi Generator

<a id="cli"></a>
## Creating the library
Create a config.yaml file similar to what is below, then run the following powershell command to generate the library `java -jar "<path>/openapi-generator/modules/openapi-generator-cli/target/openapi-generator-cli.jar" generate -c config.yaml`

```yaml
generatorName: csharp
inputSpec: src/v1/openapi.yaml
outputDir: out

# https://openapi-generator.tech/docs/generators/csharp
additionalProperties:
  packageGuid: '{5F12EC9F-626F-4B91-B9E3-9C74D31F2792}'

# https://openapi-generator.tech/docs/integrations/#github-integration
# gitHost:
# gitUserId:
# gitRepoId:

# https://openapi-generator.tech/docs/globals
# globalProperties:

# https://openapi-generator.tech/docs/customization/#inline-schema-naming
# inlineSchemaOptions:

# https://openapi-generator.tech/docs/customization/#name-mapping
# modelNameMappings:
# nameMappings:

# https://openapi-generator.tech/docs/customization/#openapi-normalizer
# openapiNormalizer:

# templateDir: https://openapi-generator.tech/docs/templating/#modifying-templates

# releaseNote:
```

<a id="usage"></a>
## Using the library in your project

```cs
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.DependencyInjection;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;
using Org.OpenAPITools.Extensions;

namespace YourProject
{
    public class Program
    {
        public static async Task Main(string[] args)
        {
            var host = CreateHostBuilder(args).Build();
            var api = host.Services.GetRequiredService<IPedidosApi>();
            IGetOrdersApiResponse apiResponse = await api.GetOrdersAsync("todo");
            object? model = apiResponse.Ok();
        }

        public static IHostBuilder CreateHostBuilder(string[] args) => Host.CreateDefaultBuilder(args)
          .ConfigureApi((context, services, options) =>
          {
              // The type of token here depends on the api security specifications
              // Available token types are ApiKeyToken, BasicToken, BearerToken, HttpSigningToken, and OAuthToken.
              BearerToken token = new("<your token>");
              options.AddTokens(token);

              // optionally choose the method the tokens will be provided with, default is RateLimitProvider
              options.UseProvider<RateLimitProvider<BearerToken>, BearerToken>();

              options.ConfigureJsonOptions((jsonOptions) =>
              {
                  // your custom converters if any
              });

              options.AddApiHttpClients(client =>
              {
                  // client configuration
              }, builder =>
              {
                  builder
                      .AddRetryPolicy(2)
                      .AddTimeoutPolicy(TimeSpan.FromSeconds(5))
                      .AddCircuitBreakerPolicy(10, TimeSpan.FromSeconds(30));
                      // add whatever middleware you prefer
                  }
              );
          });
    }
}
```
<a id="questions"></a>
## Questions

- What about HttpRequest failures and retries?
  Configure Polly in the IHttpClientBuilder
- How are tokens used?
  Tokens are provided by a TokenProvider class. The default is RateLimitProvider which will perform client side rate limiting.
  Other providers can be used with the UseProvider method.
- Does an HttpRequest throw an error when the server response is not Ok?
  It depends how you made the request. If the return type is ApiResponse<T> no error will be thrown, though the Content property will be null.
  StatusCode and ReasonPhrase will contain information about the error.
  If the return type is T, then it will throw. If the return type is TOrDefault, it will return null.
- How do I validate requests and process responses?
  Use the provided On and After partial methods in the api classes.

## Api Information
- appName: PayConductor API
- appVersion: 1.0.0
- appDescription: # Introdução  Esta documentação cobre todas as funcionalidades disponíveis na API RESTful do PayConductor, incluindo autenticação, gerenciamento de recursos e exemplos de uso.  &lt;br /&gt;  &lt;br /&gt;  - -- -  &lt;br /&gt;   # Autenticação  A API do PayConductor utiliza autenticação HTTP Basic para validar requisições. Você precisa fornecer suas credenciais (Client ID e Client Secret) no formato &#x60;client:secret&#x60; codificado em Base64.  &lt;br /&gt;  ## Obtendo Credenciais  1. Acesse o painel administrativo do PayConductor 2. Navegue até **Configurações &gt; API Keys** 3. Gere um novo par de credenciais (Client ID e Client Secret) 4. Guarde o Client Secret em local seguro - ele não será exibido novamente  &lt;br /&gt;  ## Formato de Autenticação  As credenciais devem ser enviadas no header &#x60;Authorization&#x60; usando o esquema Basic:  &#x60;&#x60;&#x60; Authorization: Basic base64(client_id:client_secret) &#x60;&#x60;&#x60;  &lt;br /&gt;  ## Exemplo em Node.js  &#x60;&#x60;&#x60;javascript const clientId &#x3D; &#39;seu_client_id&#39;; const clientSecret &#x3D; &#39;seu_client_secret&#39;;  // Codifica as credenciais em Base64 const credentials &#x3D; Buffer.from(&#x60;${clientId}:${clientSecret}&#x60;).toString(&#39;base64&#39;);  const response &#x3D; await fetch(&#39;https://api.payconductor.com/api/v1/orders&#39;, {   method: &#39;GET&#39;,   headers: {     &#39;Authorization&#39;: &#x60;Basic ${credentials}&#x60;,     &#39;Content-Type&#39;: &#39;application/json&#39;   } });  const data &#x3D; await response.json(); console.log(data); &#x60;&#x60;&#x60;  &lt;br /&gt;  ## Erros de Autenticação  | Código | Descrição | |- -- -- -- -|- -- -- -- -- --| | &#x60;401&#x60;  | Credenciais inválidas ou ausentes | | &#x60;403&#x60;  | Credenciais válidas, mas sem permissão para o recurso | | &#x60;429&#x60;  | Muitas requisições (rate limit excedido) |  ### Exemplo de resposta de erro  &#x60;&#x60;&#x60;json {   \&quot;error\&quot;: {     \&quot;code\&quot;: \&quot;UNAUTHORIZED\&quot;,     \&quot;message\&quot;: \&quot;Invalid credentials\&quot;,     \&quot;details\&quot;: \&quot;The provided client ID or secret is incorrect\&quot;   } } &#x60;&#x60;&#x60;

## Build
This C# SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project.

- SDK version: 1.0.0
- Generator version: 7.20.0
- Build package: org.openapitools.codegen.languages.CSharpClientCodegen
