# OpenapiClient::CompleteCardData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cvv** | **String** | Card security code (CVV) |  |
| **expiration** | [**CompleteCardDataExpiration**](CompleteCardDataExpiration.md) |  |  |
| **holder_name** | **String** | Card holder name |  |
| **number** | **String** | Credit card number |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CompleteCardData.new(
  cvv: null,
  expiration: null,
  holder_name: null,
  number: null
)
```

