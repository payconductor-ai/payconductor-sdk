# OpenapiClient::PostOrdersRequestPayment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_method** | **String** |  |  |
| **expiration_in_seconds** | [**PixExpirationInSeconds**](PixExpirationInSeconds.md) |  | [optional] |
| **card** | [**CartODeCrDitoCard**](CartODeCrDitoCard.md) |  |  |
| **installments** | [**CartODeCrDitoInstallments**](CartODeCrDitoInstallments.md) |  |  |
| **soft_descriptor** | **String** | Texto que aparecerá na fatura do cartão (soft descriptor) | [optional] |
| **expiration_in_days** | [**BoletoExpirationInDays**](BoletoExpirationInDays.md) |  | [optional] |
| **nu_pay** | [**NuPayNuPay**](NuPayNuPay.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PostOrdersRequestPayment.new(
  payment_method: null,
  expiration_in_seconds: null,
  card: null,
  installments: null,
  soft_descriptor: null,
  expiration_in_days: null,
  nu_pay: null
)
```

