# OrderItemsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**externalId** | **string** | External item ID | [default to undefined]
**id** | **string** | Item ID in the order | [default to undefined]
**name** | **string** | Product/service name | [default to undefined]
**qty** | **number** | Quantity | [default to undefined]
**totalAmount** | **number** | Total item amount (quantity × unit price) | [default to undefined]
**totalNetAmount** | **number** | Total net amount of the item | [default to undefined]
**unityPrice** | **number** | Unit price | [default to undefined]

## Example

```typescript
import { OrderItemsInner } from '@payconductor/sdk';

const instance: OrderItemsInner = {
    externalId,
    id,
    name,
    qty,
    totalAmount,
    totalNetAmount,
    unityPrice,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
