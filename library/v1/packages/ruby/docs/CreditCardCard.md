# OpenapiClient::CreditCardCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_six_card_number** | **String** | First 6 digits of the credit card | [optional] |
| **token** | **String** | Previously generated credit card token |  |
| **cvv** | **String** | Card security code (CVV) |  |
| **expiration** | [**CompleteCardDataExpiration**](CompleteCardDataExpiration.md) |  |  |
| **holder_name** | **String** | Card holder name |  |
| **number** | **String** | Credit card number |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CreditCardCard.new(
  first_six_card_number: null,
  token: null,
  cvv: null,
  expiration: null,
  holder_name: null,
  number: null
)
```

