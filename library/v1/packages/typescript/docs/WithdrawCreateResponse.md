# WithdrawCreateResponse

Response after creating a withdrawal or transfer

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | Unique withdrawal identifier | [default to undefined]
**externalId** | **string** | Withdrawal ID in your system | [default to undefined]
**externalIntegrationKey** | **string** | Provider key used for the withdrawal | [default to undefined]
**externalIntegrationId** | **string** | Withdrawal ID in the payment provider | [default to undefined]
**costFee** | **number** | Cost fee applied to the withdrawal | [default to undefined]
**status** | [**Status**](Status.md) |  | [default to undefined]
**errorCode** | **string** | Error code, if any | [default to undefined]
**errorMessage** | **string** | Descriptive error message, if any | [default to undefined]
**payedAt** | [**WithdrawCreateResponsePayedAt**](WithdrawCreateResponsePayedAt.md) |  | [default to undefined]
**payoutAccount** | [**WithdrawCreateResponsePayoutAccount**](WithdrawCreateResponsePayoutAccount.md) |  | [default to undefined]

## Example

```typescript
import { WithdrawCreateResponse } from '@payconductor/sdk';

const instance: WithdrawCreateResponse = {
    id,
    externalId,
    externalIntegrationKey,
    externalIntegrationId,
    costFee,
    status,
    errorCode,
    errorMessage,
    payedAt,
    payoutAccount,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
