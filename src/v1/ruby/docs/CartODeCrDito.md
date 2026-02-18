# OpenapiClient::CartODeCrDito

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_method** | **String** |  |  |
| **card** | [**CartODeCrDitoCard**](CartODeCrDitoCard.md) |  |  |
| **installments** | [**CartODeCrDitoInstallments**](CartODeCrDitoInstallments.md) |  |  |
| **soft_descriptor** | **String** | Texto que aparecerá na fatura do cartão (soft descriptor) | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CartODeCrDito.new(
  payment_method: null,
  card: null,
  installments: null,
  soft_descriptor: null
)
```

