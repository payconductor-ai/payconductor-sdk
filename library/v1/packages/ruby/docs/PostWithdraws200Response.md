# OpenapiClient::PostWithdraws200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique withdrawal identifier |  |
| **external_id** | **String** | Withdrawal ID in your system |  |
| **external_integration_key** | **String** | Provider key used for the withdrawal |  |
| **external_integration_id** | **String** | Withdrawal ID in the payment provider |  |
| **cost_fee** | **Float** | Cost fee applied to the withdrawal |  |
| **status** | [**Status**](Status.md) |  |  |
| **error_code** | **String** | Error code, if any |  |
| **error_message** | **String** | Descriptive error message, if any |  |
| **payed_at** | [**PostWithdraws200ResponsePayedAt**](PostWithdraws200ResponsePayedAt.md) |  |  |
| **payout_account** | [**PostWithdraws200ResponsePayoutAccount**](PostWithdraws200ResponsePayoutAccount.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PostWithdraws200Response.new(
  id: null,
  external_id: null,
  external_integration_key: null,
  external_integration_id: null,
  cost_fee: null,
  status: null,
  error_code: null,
  error_message: null,
  payed_at: null,
  payout_account: null
)
```

