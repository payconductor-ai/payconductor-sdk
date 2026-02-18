# OpenapiClient::PostOrders200ResponseOrderItemsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_id** | **String** | ID externo do item |  |
| **id** | **String** | ID do item no pedido |  |
| **name** | **String** | Nome do produto/serviço |  |
| **qty** | **Float** | Quantidade |  |
| **total_amount** | **Float** | Valor total do item (quantidade × preço unitário) |  |
| **total_net_amount** | **Float** | Valor líquido total do item |  |
| **unity_price** | **Float** | Preço unitário |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PostOrders200ResponseOrderItemsInner.new(
  external_id: null,
  id: null,
  name: null,
  qty: null,
  total_amount: null,
  total_net_amount: null,
  unity_price: null
)
```

