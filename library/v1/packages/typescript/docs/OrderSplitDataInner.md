# OrderSplitDataInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**merchantId** | **string** | Merchant ID of the split recipient | [default to undefined]
**amount** | **number** | Amount to be split to the recipient | [default to undefined]
**receiverType** | [**ReceiverType**](ReceiverType.md) |  | [default to undefined]

## Example

```typescript
import { OrderSplitDataInner } from '@payconductor/sdk';

const instance: OrderSplitDataInner = {
    merchantId,
    amount,
    receiverType,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
