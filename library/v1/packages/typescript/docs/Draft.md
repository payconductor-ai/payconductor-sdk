# Draft

Used to create an order without generating a real payment. Use to create orders that will be paid later

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**paymentMethod** | **string** |  | [default to undefined]
**expirationInSeconds** | [**DraftExpirationInSeconds**](DraftExpirationInSeconds.md) |  | [optional] [default to undefined]
**availablePaymentMethods** | [**Array&lt;DraftAvailablePaymentMethodsInner&gt;**](DraftAvailablePaymentMethodsInner.md) | Available payment methods for this order | [optional] [default to undefined]

## Example

```typescript
import { Draft } from 'payconductor-sdk';

const instance: Draft = {
    paymentMethod,
    expirationInSeconds,
    availablePaymentMethods,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
