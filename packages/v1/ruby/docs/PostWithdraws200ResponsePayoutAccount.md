# OpenapiClient::PostWithdraws200ResponsePayoutAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique payment account identifier |  |
| **owner_document** | **String** | Account holder document (CPF or CNPJ) |  |
| **owner_name** | **String** | Account holder name |  |
| **pix_key** | **String** | PIX key used for the withdrawal |  |
| **pix_type** | **String** | PIX key type | [default to &#39;Cpf&#39;] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PostWithdraws200ResponsePayoutAccount.new(
  id: null,
  owner_document: null,
  owner_name: null,
  pix_key: null,
  pix_type: null
)
```

