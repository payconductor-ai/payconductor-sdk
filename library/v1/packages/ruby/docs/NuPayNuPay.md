# OpenapiClient::NuPayNuPay

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cancel_url** | **String** | Payment cancellation URL |  |
| **merchant_name** | **String** | Merchant name |  |
| **return_url** | **String** | Return URL after payment completion |  |
| **store_name** | **String** | Store name | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::NuPayNuPay.new(
  cancel_url: null,
  merchant_name: null,
  return_url: null,
  store_name: null
)
```

