# PostOrders200ResponseOrderItemsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**external_id** | **str** | ID externo do item | 
**id** | **str** | ID do item no pedido | 
**name** | **str** | Nome do produto/serviço | 
**qty** | **float** | Quantidade | 
**total_amount** | **float** | Valor total do item (quantidade × preço unitário) | 
**total_net_amount** | **float** | Valor líquido total do item | 
**unity_price** | **float** | Preço unitário | 

## Example

```python
from openapi_client.models.post_orders200_response_order_items_inner import PostOrders200ResponseOrderItemsInner

# TODO update the JSON string below
json = "{}"
# create an instance of PostOrders200ResponseOrderItemsInner from a JSON string
post_orders200_response_order_items_inner_instance = PostOrders200ResponseOrderItemsInner.from_json(json)
# print the JSON string representation of the object
print(PostOrders200ResponseOrderItemsInner.to_json())

# convert the object into a dict
post_orders200_response_order_items_inner_dict = post_orders200_response_order_items_inner_instance.to_dict()
# create an instance of PostOrders200ResponseOrderItemsInner from a dict
post_orders200_response_order_items_inner_from_dict = PostOrders200ResponseOrderItemsInner.from_dict(post_orders200_response_order_items_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


