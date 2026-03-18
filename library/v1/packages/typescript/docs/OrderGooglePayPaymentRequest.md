# OrderGooglePayPaymentRequest

Specific data for Google Pay payment (ECv2 Token)

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**paymentMethod** | **string** |  | [default to undefined]
**googlePay** | [**OrderGooglePayPaymentRequestGooglePay**](OrderGooglePayPaymentRequestGooglePay.md) |  | [default to undefined]
**installments** | **number** | Number of installments | [optional] [default to 1]

## Example

```typescript
import { OrderGooglePayPaymentRequest } from '@payconductor/sdk';

const instance: OrderGooglePayPaymentRequest = {
    paymentMethod,
    googlePay,
    installments,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
