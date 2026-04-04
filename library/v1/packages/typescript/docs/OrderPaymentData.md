# OrderPaymentData

Payment data for the order (Pix, Credit Card, Bank Slip, NuPay, etc...)

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**paymentMethod** | **string** |  | [default to undefined]
**expirationInSeconds** | **number** | Order expiration time in seconds | [optional] [default to 3600]
**card** | [**CreditCardPaymentCard**](CreditCardPaymentCard.md) |  | [default to undefined]
**installments** | **number** | Number of installments | [default to 1]
**softDescriptor** | **string** | Text that will appear on the card statement (soft descriptor) | [optional] [default to undefined]
**threeDSecure** | [**CreditCardPaymentThreeDSecure**](CreditCardPaymentThreeDSecure.md) |  | [optional] [default to undefined]
**expirationInDays** | **number** | Days until bank slip expires | [optional] [default to 7]
**nuPay** | [**NuPayPaymentNuPay**](NuPayPaymentNuPay.md) |  | [default to undefined]
**googlePay** | [**GooglePayPaymentGooglePay**](GooglePayPaymentGooglePay.md) |  | [default to undefined]
**applePay** | [**ApplePayApplePay**](ApplePayApplePay.md) |  | [default to undefined]
**availablePaymentMethods** | **Array&lt;string&gt;** | Available payment methods for this order | [optional] [default to undefined]

## Example

```typescript
import { OrderPaymentData } from '@payconductor/sdk';

const instance: OrderPaymentData = {
    paymentMethod,
    expirationInSeconds,
    card,
    installments,
    softDescriptor,
    threeDSecure,
    expirationInDays,
    nuPay,
    googlePay,
    applePay,
    availablePaymentMethods,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
