# OpenapiClient::DadosCompletosDoCartO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cvv** | **String** | Código de segurança do cartão (CVV) |  |
| **expiration** | [**DadosCompletosDoCartOExpiration**](DadosCompletosDoCartOExpiration.md) |  |  |
| **holder_name** | **String** | Nome do titular do cartão |  |
| **number** | **String** | Número do cartão de crédito |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DadosCompletosDoCartO.new(
  cvv: null,
  expiration: null,
  holder_name: null,
  number: null
)
```

