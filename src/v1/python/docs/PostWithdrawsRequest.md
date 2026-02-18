# PostWithdrawsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **float** | Valor do saque em centavos | 
**external_id** | **str** | ID do saque no seu sistema | [optional] 
**merchant** | [**MerchantInput**](MerchantInput.md) |  | [optional] 
**payout_account** | [**PostWithdrawsRequestPayoutAccount**](PostWithdrawsRequestPayoutAccount.md) |  | 

## Example

```python
from openapi_client.models.post_withdraws_request import PostWithdrawsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PostWithdrawsRequest from a JSON string
post_withdraws_request_instance = PostWithdrawsRequest.from_json(json)
# print the JSON string representation of the object
print(PostWithdrawsRequest.to_json())

# convert the object into a dict
post_withdraws_request_dict = post_withdraws_request_instance.to_dict()
# create an instance of PostWithdrawsRequest from a dict
post_withdraws_request_from_dict = PostWithdrawsRequest.from_dict(post_withdraws_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


