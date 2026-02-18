# PostCardTokenization200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **str** | ID of the customer associated with the created card | 
**token** | **str** | Token of the created card for future transactions | 

## Example

```python
from payconductor_sdk.models.post_card_tokenization200_response import PostCardTokenization200Response

# TODO update the JSON string below
json = "{}"
# create an instance of PostCardTokenization200Response from a JSON string
post_card_tokenization200_response_instance = PostCardTokenization200Response.from_json(json)
# print the JSON string representation of the object
print(PostCardTokenization200Response.to_json())

# convert the object into a dict
post_card_tokenization200_response_dict = post_card_tokenization200_response_instance.to_dict()
# create an instance of PostCardTokenization200Response from a dict
post_card_tokenization200_response_from_dict = PostCardTokenization200Response.from_dict(post_card_tokenization200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


