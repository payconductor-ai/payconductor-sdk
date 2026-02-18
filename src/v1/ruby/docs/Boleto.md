# OpenapiClient::Boleto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_method** | **String** |  |  |
| **expiration_in_days** | [**BoletoExpirationInDays**](BoletoExpirationInDays.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Boleto.new(
  payment_method: null,
  expiration_in_days: null
)
```

