# PostOrders200ResponseOrderItemsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**externalId** | **string** | ID externo do item | [default to undefined]
**id** | **string** | ID do item no pedido | [default to undefined]
**name** | **string** | Nome do produto/serviço | [default to undefined]
**qty** | **number** | Quantidade | [default to undefined]
**totalAmount** | **number** | Valor total do item (quantidade × preço unitário) | [default to undefined]
**totalNetAmount** | **number** | Valor líquido total do item | [default to undefined]
**unityPrice** | **number** | Preço unitário | [default to undefined]

## Example

```typescript
import { PostOrders200ResponseOrderItemsInner } from './api';

const instance: PostOrders200ResponseOrderItemsInner = {
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
