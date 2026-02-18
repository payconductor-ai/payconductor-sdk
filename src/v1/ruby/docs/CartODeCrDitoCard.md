# OpenapiClient::CartODeCrDitoCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_six_card_number** | **String** | Primeiros 6 dígitos do cartão de crédito | [optional] |
| **token** | **String** | Token do cartão de crédito gerado anteriormente |  |
| **cvv** | **String** | Código de segurança do cartão (CVV) |  |
| **expiration** | [**DadosCompletosDoCartOExpiration**](DadosCompletosDoCartOExpiration.md) |  |  |
| **holder_name** | **String** | Nome do titular do cartão |  |
| **number** | **String** | Número do cartão de crédito |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CartODeCrDitoCard.new(
  first_six_card_number: null,
  token: null,
  cvv: null,
  expiration: null,
  holder_name: null,
  number: null
)
```

