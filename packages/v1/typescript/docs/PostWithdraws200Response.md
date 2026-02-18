# PostWithdraws200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | Unique withdrawal identifier | [default to undefined]
**externalId** | **string** | Withdrawal ID in your system | [default to undefined]
**externalIntegrationKey** | **string** | Provider key used for the withdrawal | [default to undefined]
**externalIntegrationId** | **string** | Withdrawal ID in the payment provider | [default to undefined]
**costFee** | **number** | Cost fee applied to the withdrawal | [default to undefined]
**status** | **string** | Withdrawal status | [default to StatusEnum_Pending]
**errorCode** | **string** | Error code, if any | [default to undefined]
**errorMessage** | **string** | Descriptive error message, if any | [default to undefined]
**payedAt** | [**PostWithdraws200ResponsePayedAt**](PostWithdraws200ResponsePayedAt.md) |  | [default to undefined]
**payoutAccount** | [**PostWithdraws200ResponsePayoutAccount**](PostWithdraws200ResponsePayoutAccount.md) |  | [default to undefined]

## Example

```typescript
import { PostWithdraws200Response } from 'payconductor-sdk';

const instance: PostWithdraws200Response = {
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
