# PostWithdrawsRequestPayoutAccount


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ownerDocument** | **string** | Account holder document (CPF or CNPJ) | [default to undefined]
**ownerName** | **string** | Account holder name | [default to undefined]
**pixKey** | **string** | PIX key for withdrawal | [default to undefined]
**pixType** | **string** | PIX key type | [default to PixTypeEnum_Cnpj]

## Example

```typescript
import { PostWithdrawsRequestPayoutAccount } from 'payconductor-sdk';

const instance: PostWithdrawsRequestPayoutAccount = {
    ownerDocument,
    ownerName,
    pixKey,
    pixType,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
