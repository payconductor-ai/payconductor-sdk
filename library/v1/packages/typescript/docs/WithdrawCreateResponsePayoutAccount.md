# WithdrawCreateResponsePayoutAccount


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | Unique payment account identifier | [default to undefined]
**ownerDocument** | **string** | Account holder document (CPF or CNPJ) | [default to undefined]
**ownerName** | **string** | Account holder name | [default to undefined]
**pixKey** | **string** | PIX key used for the withdrawal | [default to undefined]
**pixType** | [**PixType**](PixType.md) |  | [default to undefined]

## Example

```typescript
import { WithdrawCreateResponsePayoutAccount } from '@payconductor/sdk';

const instance: WithdrawCreateResponsePayoutAccount = {
    id,
    ownerDocument,
    ownerName,
    pixKey,
    pixType,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
