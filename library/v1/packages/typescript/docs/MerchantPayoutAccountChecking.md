# MerchantPayoutAccountChecking

Bank account data for receiving payments

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accountNumber** | **string** | Account number with check digit | [default to undefined]
**routingNumber** | **string** | Bank code + branch number + check digit | [default to undefined]

## Example

```typescript
import { MerchantPayoutAccountChecking } from '@payconductor/sdk';

const instance: MerchantPayoutAccountChecking = {
    accountNumber,
    routingNumber,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
