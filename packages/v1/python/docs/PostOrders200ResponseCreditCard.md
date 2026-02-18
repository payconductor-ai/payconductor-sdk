# PostOrders200ResponseCreditCard


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**authorization_code** | **str** | Transaction authorization code | [optional] 

## Example

```python
from payconductor-sdk.models.post_orders200_response_credit_card import PostOrders200ResponseCreditCard

# TODO update the JSON string below
json = "{}"
# create an instance of PostOrders200ResponseCreditCard from a JSON string
post_orders200_response_credit_card_instance = PostOrders200ResponseCreditCard.from_json(json)
# print the JSON string representation of the object
print(PostOrders200ResponseCreditCard.to_json())

# convert the object into a dict
post_orders200_response_credit_card_dict = post_orders200_response_credit_card_instance.to_dict()
# create an instance of PostOrders200ResponseCreditCard from a dict
post_orders200_response_credit_card_from_dict = PostOrders200ResponseCreditCard.from_dict(post_orders200_response_credit_card_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


