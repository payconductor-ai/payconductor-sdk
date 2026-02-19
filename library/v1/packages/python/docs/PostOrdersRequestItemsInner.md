# PostOrdersRequestItemsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Product or service ID in your system | 
**is_physical** | **bool** | Defines if the item is a physical product or a service | [default to False]
**name** | **str** | Product or service name | 
**qty** | **float** | Quantity of the product or service | 
**unit_price** | **float** | Unit price | 

## Example

```python
from payconductor_sdk.models.post_orders_request_items_inner import PostOrdersRequestItemsInner

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


