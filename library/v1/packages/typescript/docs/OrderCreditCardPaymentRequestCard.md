# OrderCreditCardPaymentRequestCard


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**firstSixCardNumber** | **string** | First 6 digits of the credit card | [optional] [default to undefined]
**token** | **string** | Previously generated credit card token | [default to undefined]
**cvv** | **string** | Card security code (CVV) | [default to undefined]
**expiration** | [**CardExpirationData**](CardExpirationData.md) |  | [default to undefined]
**holderName** | **string** | Card holder name | [default to undefined]
**number** | **string** | Credit card number | [default to undefined]

## Example

```typescript
import { OrderCreditCardPaymentRequestCard } from '@payconductor/sdk';

const instance: OrderCreditCardPaymentRequestCard = {
    firstSixCardNumber,
    token,
    cvv,
    expiration,
    holderName,
    number,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
