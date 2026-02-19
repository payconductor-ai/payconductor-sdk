# OpenapiClient::BankSlip

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_method** | [**PaymentMethod**](PaymentMethod.md) |  |  |
| **expiration_in_days** | [**BankSlipExpirationInDays**](BankSlipExpirationInDays.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::BankSlip.new(
  payment_method: null,
  expiration_in_days: null
)
```

