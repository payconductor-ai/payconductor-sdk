# OrderCreditCardPaymentRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**paymentMethod** | **string** |  | [default to undefined]
**card** | [**OrderCreditCardPaymentRequestCard**](OrderCreditCardPaymentRequestCard.md) |  | [default to undefined]
**installments** | **number** | Number of installments | [default to 1]
**softDescriptor** | **string** | Text that will appear on the card statement (soft descriptor) | [optional] [default to undefined]

## Example

```typescript
import { OrderCreditCardPaymentRequest } from 'payconductor-sdk';

const instance: OrderCreditCardPaymentRequest = {
    paymentMethod,
    card,
    installments,
    softDescriptor,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
