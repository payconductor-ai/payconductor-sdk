# OrderItemData

Product or service item in the order

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | Product or service ID in your system | [default to undefined]
**isPhysical** | **boolean** | Defines if the item is a physical product or a service | [default to false]
**name** | **string** | Product or service name | [default to undefined]
**qty** | **number** | Quantity of the product or service | [default to undefined]
**unitPrice** | **number** | Unit price | [default to undefined]

## Example

```typescript
import { OrderItemData } from '@payconductor/sdk';

const instance: OrderItemData = {
    id,
    isPhysical,
    name,
    qty,
    unitPrice,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
