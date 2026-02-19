# PostOrdersRequestPayment

Payment data for the order (Pix, Credit Card, Bank Slip, NuPay, etc...)

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**paymentMethod** | **string** |  | [default to undefined]
**expirationInSeconds** | [**DraftExpirationInSeconds**](DraftExpirationInSeconds.md) |  | [optional] [default to undefined]
**card** | [**CreditCardCard**](CreditCardCard.md) |  | [default to undefined]
**installments** | [**CreditCardInstallments**](CreditCardInstallments.md) |  | [default to undefined]
**softDescriptor** | **string** | Text that will appear on the card statement (soft descriptor) | [optional] [default to undefined]
**expirationInDays** | [**BankSlipExpirationInDays**](BankSlipExpirationInDays.md) |  | [optional] [default to undefined]
**nuPay** | [**NuPayNuPay**](NuPayNuPay.md) |  | [default to undefined]
**availablePaymentMethods** | [**Array&lt;DraftAvailablePaymentMethodsInner&gt;**](DraftAvailablePaymentMethodsInner.md) | Available payment methods for this order | [optional] [default to undefined]

## Example

```typescript
import { PostOrdersRequestPayment } from 'payconductor-sdk';

const instance: PostOrdersRequestPayment = {
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
