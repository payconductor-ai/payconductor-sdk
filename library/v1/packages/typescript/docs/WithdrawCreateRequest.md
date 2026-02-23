# WithdrawCreateRequest

Withdrawal or transfer request data

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **number** | Withdrawal amount in cents | [default to undefined]
**externalId** | **string** | Withdrawal ID in your system | [optional] [default to undefined]
**merchant** | [**MerchantInput**](MerchantInput.md) |  | [optional] [default to undefined]
**payoutAccount** | [**WithdrawPayoutAccountData**](WithdrawPayoutAccountData.md) |  | [default to undefined]

## Example

```typescript
import { WithdrawCreateRequest } from '@payconductor/sdk';

const instance: WithdrawCreateRequest = {
    amount,
    externalId,
    merchant,
    payoutAccount,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
