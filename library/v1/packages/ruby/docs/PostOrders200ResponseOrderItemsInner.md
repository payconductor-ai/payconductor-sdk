# OpenapiClient::PostOrders200ResponseOrderItemsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_id** | **String** | External item ID |  |
| **id** | **String** | Item ID in the order |  |
| **name** | **String** | Product/service name |  |
| **qty** | **Float** | Quantity |  |
| **total_amount** | **Float** | Total item amount (quantity × unit price) |  |
| **total_net_amount** | **Float** | Total net amount of the item |  |
| **unity_price** | **Float** | Unit price |  |

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

