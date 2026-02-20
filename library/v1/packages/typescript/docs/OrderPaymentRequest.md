# OrderPaymentRequest

Payment data for the order (Pix, Credit Card, Bank Slip, NuPay, etc...)

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**paymentMethod** | **string** |  | [default to undefined]
**expirationInSeconds** | **number** | Order expiration time in seconds | [optional] [default to 3600]
**card** | [**OrderCreditCardPaymentRequestCard**](OrderCreditCardPaymentRequestCard.md) |  | [default to undefined]
**installments** | **number** | Number of installments | [default to 1]
**softDescriptor** | **string** | Text that will appear on the card statement (soft descriptor) | [optional] [default to undefined]
**expirationInDays** | **number** | Days until bank slip expires | [optional] [default to 7]
**nuPay** | [**OrderNuPayPaymentRequestNuPay**](OrderNuPayPaymentRequestNuPay.md) |  | [default to undefined]
**availablePaymentMethods** | [**Array&lt;AvailablePaymentMethods&gt;**](AvailablePaymentMethods.md) | Available payment methods for this order | [optional] [default to undefined]

## Example

```typescript
import { OrderPaymentRequest } from 'payconductor-sdk';

const instance: OrderPaymentRequest = {
    paymentMethod,
    expirationInSeconds,
    card,
    installments,
    softDescriptor,
    expirationInDays,
    nuPay,
    availablePaymentMethods,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
