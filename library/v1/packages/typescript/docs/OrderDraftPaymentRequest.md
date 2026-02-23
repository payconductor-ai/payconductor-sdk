# OrderDraftPaymentRequest

Used to create an order without generating a real payment. Use to create orders that will be paid later

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**paymentMethod** | **string** |  | [default to undefined]
**expirationInSeconds** | **number** | Order expiration time in seconds | [optional] [default to 3600]
**availablePaymentMethods** | [**Array&lt;AvailablePaymentMethods&gt;**](AvailablePaymentMethods.md) | Available payment methods for this order | [optional] [default to undefined]

## Example

```typescript
import { OrderDraftPaymentRequest } from '@payconductor/sdk';

const instance: OrderDraftPaymentRequest = {
    paymentMethod,
    expirationInSeconds,
    availablePaymentMethods,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
