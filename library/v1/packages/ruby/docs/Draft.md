# OpenapiClient::Draft

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_method** | **String** |  |  |
| **expiration_in_seconds** | [**DraftExpirationInSeconds**](DraftExpirationInSeconds.md) |  | [optional] |
| **available_payment_methods** | [**Array&lt;DraftAvailablePaymentMethodsInner&gt;**](DraftAvailablePaymentMethodsInner.md) | Available payment methods for this order | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Draft.new(
  payment_method: null,
  expiration_in_seconds: null,
  available_payment_methods: null
)
```

