# OrderPIXPaymentRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**paymentMethod** | **string** |  | [default to undefined]
**expirationInSeconds** | **number** | PIX expiration time in seconds | [optional] [default to 3600]

## Example

```typescript
import { OrderPIXPaymentRequest } from 'payconductor-sdk';

const instance: OrderPIXPaymentRequest = {
    paymentMethod,
    expirationInSeconds,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
