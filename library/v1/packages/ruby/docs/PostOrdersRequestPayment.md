# OpenapiClient::PostOrdersRequestPayment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_method** | **String** |  |  |
| **expiration_in_seconds** | [**DraftExpirationInSeconds**](DraftExpirationInSeconds.md) |  | [optional] |
| **card** | [**CreditCardCard**](CreditCardCard.md) |  |  |
| **installments** | [**CreditCardInstallments**](CreditCardInstallments.md) |  |  |
| **soft_descriptor** | **String** | Text that will appear on the card statement (soft descriptor) | [optional] |
| **expiration_in_days** | [**BankSlipExpirationInDays**](BankSlipExpirationInDays.md) |  | [optional] |
| **nu_pay** | [**NuPayNuPay**](NuPayNuPay.md) |  |  |
| **available_payment_methods** | [**Array&lt;DraftAvailablePaymentMethodsInner&gt;**](DraftAvailablePaymentMethodsInner.md) | Available payment methods for this order | [optional] |

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
  nu_pay: null,
  available_payment_methods: null
)
```

