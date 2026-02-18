# OpenapiClient::PostWithdrawsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Valor do saque em centavos |  |
| **external_id** | **String** | ID do saque no seu sistema | [optional] |
| **merchant** | [**MerchantInput**](MerchantInput.md) |  | [optional] |
| **payout_account** | [**PostWithdrawsRequestPayoutAccount**](PostWithdrawsRequestPayoutAccount.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PostWithdrawsRequest.new(
  amount: null,
  external_id: null,
  merchant: null,
  payout_account: null
)
```

