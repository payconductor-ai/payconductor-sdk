# OpenapiClient::TokenizedCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_six_card_number** | **String** | First 6 digits of the credit card | [optional] |
| **token** | **String** | Previously generated credit card token |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TokenizedCard.new(
  first_six_card_number: null,
  token: null
)
```

