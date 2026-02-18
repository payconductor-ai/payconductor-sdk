# OpenapiClient::PostOrdersRequestItemsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID do produto ou serviço no seu sistema |  |
| **is_physical** | **Boolean** | Define se o item é um produto físico ou um serviço | [default to false] |
| **name** | **String** | Nome do produto ou serviço |  |
| **qty** | **Float** | Quantidade do produto ou serviço |  |
| **unit_price** | **Float** | Preço unitário |  |

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

