# PostOrdersRequestItemsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | ID do produto ou serviço no seu sistema | 
**is_physical** | **bool** | Define se o item é um produto físico ou um serviço | [default to False]
**name** | **str** | Nome do produto ou serviço | 
**qty** | **float** | Quantidade do produto ou serviço | 
**unit_price** | **float** | Preço unitário | 

## Example

```python
from openapi_client.models.post_orders_request_items_inner import PostOrdersRequestItemsInner

# TODO update the JSON string below
json = "{}"
# create an instance of PostOrdersRequestItemsInner from a JSON string
post_orders_request_items_inner_instance = PostOrdersRequestItemsInner.from_json(json)
# print the JSON string representation of the object
print(PostOrdersRequestItemsInner.to_json())

# convert the object into a dict
post_orders_request_items_inner_dict = post_orders_request_items_inner_instance.to_dict()
# create an instance of PostOrdersRequestItemsInner from a dict
post_orders_request_items_inner_from_dict = PostOrdersRequestItemsInner.from_dict(post_orders_request_items_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


