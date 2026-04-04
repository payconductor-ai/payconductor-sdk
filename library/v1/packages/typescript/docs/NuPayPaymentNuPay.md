# NuPayPaymentNuPay

Specific data for NuPay payment

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cancelUrl** | **string** | Payment cancellation URL | [default to undefined]
**merchantName** | **string** | Merchant name | [default to undefined]
**returnUrl** | **string** | Return URL after payment completion | [default to undefined]
**storeName** | **string** | Store name | [optional] [default to undefined]

## Example

```typescript
import { NuPayPaymentNuPay } from '@payconductor/sdk';

const instance: NuPayPaymentNuPay = {
    cancelUrl,
    merchantName,
    returnUrl,
    storeName,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
