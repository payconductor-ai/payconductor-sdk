# PostWithdrawsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **number** | Valor do saque em centavos | [default to undefined]
**externalId** | **string** | ID do saque no seu sistema | [optional] [default to undefined]
**merchant** | [**MerchantInput**](MerchantInput.md) |  | [optional] [default to undefined]
**payoutAccount** | [**PostWithdrawsRequestPayoutAccount**](PostWithdrawsRequestPayoutAccount.md) |  | [default to undefined]

## Example

```typescript
import { PostWithdrawsRequest } from './api';

const instance: PostWithdrawsRequest = {
    amount,
    externalId,
    merchant,
    payoutAccount,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
