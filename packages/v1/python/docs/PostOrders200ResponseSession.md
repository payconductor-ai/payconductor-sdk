# PostOrders200ResponseSession


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**session_id** | **str** | ID of the checkout session associated with the order | 

## Example

```python
from payconductor-sdk.models.post_orders200_response_session import PostOrders200ResponseSession

# TODO update the JSON string below
json = "{}"
# create an instance of PostOrders200ResponseSession from a JSON string
post_orders200_response_session_instance = PostOrders200ResponseSession.from_json(json)
# print the JSON string representation of the object
print(PostOrders200ResponseSession.to_json())

# convert the object into a dict
post_orders200_response_session_dict = post_orders200_response_session_instance.to_dict()
# create an instance of PostOrders200ResponseSession from a dict
post_orders200_response_session_from_dict = PostOrders200ResponseSession.from_dict(post_orders200_response_session_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


