# MerchantPayoutAccount

Merchant bank account for receiving payments (PIX and/or checking account)

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pix** | [**MerchantPayoutAccountPix**](MerchantPayoutAccountPix.md) |  | [optional] [default to undefined]
**checking** | [**MerchantPayoutAccountChecking**](MerchantPayoutAccountChecking.md) |  | [optional] [default to undefined]

## Example

```typescript
import { MerchantPayoutAccount } from '@payconductor/sdk';

const instance: MerchantPayoutAccount = {
    pix,
    checking,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
