# PostWithdrawsRequestPayoutAccount


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**owner_document** | **str** | Account holder document (CPF or CNPJ) | 
**owner_name** | **str** | Account holder name | 
**pix_key** | **str** | PIX key for withdrawal | 
**pix_type** | **str** | PIX key type | [default to 'Cnpj']

## Example

```python
from payconductor_sdk.models.post_withdraws_request_payout_account import PostWithdrawsRequestPayoutAccount

# TODO update the JSON string below
json = "{}"
# create an instance of PostWithdrawsRequestPayoutAccount from a JSON string
post_withdraws_request_payout_account_instance = PostWithdrawsRequestPayoutAccount.from_json(json)
# print the JSON string representation of the object
print(PostWithdrawsRequestPayoutAccount.to_json())

# convert the object into a dict
post_withdraws_request_payout_account_dict = post_withdraws_request_payout_account_instance.to_dict()
# create an instance of PostWithdrawsRequestPayoutAccount from a dict
post_withdraws_request_payout_account_from_dict = PostWithdrawsRequestPayoutAccount.from_dict(post_withdraws_request_payout_account_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


