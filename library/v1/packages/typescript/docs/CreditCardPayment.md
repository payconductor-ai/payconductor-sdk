# CreditCardPayment

Specific data for credit card payment

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**paymentMethod** | [**PaymentMethod**](PaymentMethod.md) |  | [default to undefined]
**card** | [**CreditCardPaymentCard**](CreditCardPaymentCard.md) |  | [default to undefined]
**installments** | **number** | Number of installments | [default to 1]
**softDescriptor** | **string** | Text that will appear on the card statement (soft descriptor) | [optional] [default to undefined]
**threeDSecure** | [**CreditCardPaymentThreeDSecure**](CreditCardPaymentThreeDSecure.md) |  | [optional] [default to undefined]

## Example

```typescript
import { CreditCardPayment } from '@payconductor/sdk';

const instance: CreditCardPayment = {
    paymentMethod,
    card,
    installments,
    softDescriptor,
    threeDSecure,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
