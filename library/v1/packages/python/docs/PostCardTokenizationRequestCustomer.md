# PostCardTokenizationRequestCustomer


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | [**CustomerAddress**](CustomerAddress.md) |  | [optional] 
**document_number** | **str** | Customer CPF or CNPJ without formatting | 
**document_type** | [**DocumentType**](DocumentType.md) |  | 
**email** | **str** | Customer email | 
**name** | **str** | Customer full name | 
**phone_number** | **str** | Customer phone number in +55 DD 9XXXXXXXX format | [optional] 
**id** | **str** | ID do cliente existente | 

## Example

```python
from payconductor_sdk.models.post_card_tokenization_request_customer import PostCardTokenizationRequestCustomer

# TODO update the JSON string below
json = "{}"
# create an instance of PostCardTokenizationRequestCustomer from a JSON string
post_card_tokenization_request_customer_instance = PostCardTokenizationRequestCustomer.from_json(json)
# print the JSON string representation of the object
print(PostCardTokenizationRequestCustomer.to_json())

# convert the object into a dict
post_card_tokenization_request_customer_dict = post_card_tokenization_request_customer_instance.to_dict()
# create an instance of PostCardTokenizationRequestCustomer from a dict
post_card_tokenization_request_customer_from_dict = PostCardTokenizationRequestCustomer.from_dict(post_card_tokenization_request_customer_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


