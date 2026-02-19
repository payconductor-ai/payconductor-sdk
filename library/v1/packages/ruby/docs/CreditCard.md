# OpenapiClient::CreditCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_method** | **String** |  |  |
| **card** | [**CreditCardCard**](CreditCardCard.md) |  |  |
| **installments** | [**CreditCardInstallments**](CreditCardInstallments.md) |  |  |
| **soft_descriptor** | **String** | Text that will appear on the card statement (soft descriptor) | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CreditCard.new(
  payment_method: null,
  card: null,
  installments: null,
  soft_descriptor: null
)
```

