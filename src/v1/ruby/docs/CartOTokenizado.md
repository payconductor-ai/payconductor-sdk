# OpenapiClient::CartOTokenizado

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_six_card_number** | **String** | Primeiros 6 dígitos do cartão de crédito | [optional] |
| **token** | **String** | Token do cartão de crédito gerado anteriormente |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CartOTokenizado.new(
  first_six_card_number: null,
  token: null
)
```

