# PostCardTokenizationRequest

Data for creating a customer card

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**card** | [**CompleteCardData**](CompleteCardData.md) |  | 
**save_card** | **bool** | Indicates if the card should be saved for future use | 
**customer** | [**PostCardTokenizationRequestCustomer**](PostCardTokenizationRequestCustomer.md) |  | 

## Example

```python
from payconductor_sdk.models.post_card_tokenization_request import PostCardTokenizationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PostCardTokenizationRequest from a JSON string
post_card_tokenization_request_instance = PostCardTokenizationRequest.from_json(json)
# print the JSON string representation of the object
print(PostCardTokenizationRequest.to_json())

# convert the object into a dict
post_card_tokenization_request_dict = post_card_tokenization_request_instance.to_dict()
# create an instance of PostCardTokenizationRequest from a dict
post_card_tokenization_request_from_dict = PostCardTokenizationRequest.from_dict(post_card_tokenization_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


