# MerchantFlow

Schema for configuring a merchant flow

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**flowId** | **string** | Flow ID | [default to undefined]
**paymentMethod** | [**PaymentMethod**](PaymentMethod.md) |  | [default to undefined]

## Example

```typescript
import { MerchantFlow } from '@payconductor/sdk';

const instance: MerchantFlow = {
    flowId,
    paymentMethod,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
