# OpenapiClient::PostWithdrawsRequestPayoutAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **owner_document** | **String** | Documento do titular da conta (CPF ou CNPJ) |  |
| **owner_name** | **String** | Nome do titular da conta |  |
| **pix_key** | **String** | PIX key for withdrawal |  |
| **pix_type** | **String** | PIX key type | [default to &#39;Cnpj&#39;] |

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

