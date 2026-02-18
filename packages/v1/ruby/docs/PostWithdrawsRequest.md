# OpenapiClient::PostWithdrawsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Withdrawal amount in cents |  |
| **external_id** | **String** | Withdrawal ID in your system | [optional] |
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

