# OpenapiClient::PostOrdersRequestItemsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Product or service ID in your system |  |
| **is_physical** | **Boolean** | Defines if the item is a physical product or a service | [default to false] |
| **name** | **String** | Product or service name |  |
| **qty** | **Float** | Quantity of the product or service |  |
| **unit_price** | **Float** | Unit price |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PostOrdersRequestItemsInner.new(
  id: null,
  is_physical: null,
  name: null,
  qty: null,
  unit_price: null
)
```

