# PostOrders200ResponseOrderItemsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**external_id** | **str** | External item ID | 
**id** | **str** | Item ID in the order | 
**name** | **str** | Product/service name | 
**qty** | **float** | Quantity | 
**total_amount** | **float** | Total item amount (quantity × unit price) | 
**total_net_amount** | **float** | Total net amount of the item | 
**unity_price** | **float** | Unit price | 

## Example

```python
from payconductor-sdk.models.post_orders200_response_order_items_inner import PostOrders200ResponseOrderItemsInner

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


