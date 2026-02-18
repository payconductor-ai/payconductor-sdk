# OpenapiClient::PostOrdersRequestPayment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_method** | **String** |  |  |
| **expiration_in_seconds** | [**PixExpirationInSeconds**](PixExpirationInSeconds.md) |  | [optional] |
| **card** | [**CreditCardCard**](CreditCardCard.md) |  |  |
| **installments** | [**CreditCardInstallments**](CreditCardInstallments.md) |  |  |
| **soft_descriptor** | **String** | Text that will appear on the card statement (soft descriptor) | [optional] |
| **expiration_in_days** | [**BankSlipExpirationInDays**](BankSlipExpirationInDays.md) |  | [optional] |
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

