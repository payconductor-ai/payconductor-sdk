# OpenapiClient::PostWithdrawsRequestPayoutAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **owner_document** | **String** | Account holder document (CPF or CNPJ) |  |
| **owner_name** | **String** | Account holder name |  |
| **pix_key** | **String** | PIX key for withdrawal |  |
| **pix_type** | [**PixType**](PixType.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PostWithdrawsRequestPayoutAccount.new(
  owner_document: null,
  owner_name: null,
  pix_key: null,
  pix_type: null
)
```

