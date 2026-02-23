# OrderBankSlipPaymentRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**paymentMethod** | **string** |  | [default to undefined]
**expirationInDays** | **number** | Days until bank slip expires | [optional] [default to 7]

## Example

```typescript
import { OrderBankSlipPaymentRequest } from '@payconductor/sdk';

const instance: OrderBankSlipPaymentRequest = {
    paymentMethod,
    expirationInDays,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
