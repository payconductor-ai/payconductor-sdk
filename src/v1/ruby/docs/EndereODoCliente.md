# OpenapiClient::EndereODoCliente

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **city** | **String** | Nome da cidade |  |
| **country** | **String** | Código do país no formato ISO 3166-1 alpha-2 | [default to &#39;BR&#39;] |
| **neighborhood** | **String** | Nome do bairro |  |
| **number** | **String** | Número do endereço |  |
| **state** | **String** | Código do estado no formato ISO 3166-2 |  |
| **street** | **String** | Nome da rua |  |
| **zip_code** | **String** | CEP sem formatação |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::EndereODoCliente.new(
  city: null,
  country: null,
  neighborhood: null,
  number: null,
  state: null,
  street: null,
  zip_code: null
)
```

