# PostWithdraws200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Unique withdrawal identifier | 
**external_id** | **str** | Withdrawal ID in your system | 
**external_integration_key** | **str** | Provider key used for the withdrawal | 
**external_integration_id** | **str** | Withdrawal ID in the payment provider | 
**cost_fee** | **float** | Cost fee applied to the withdrawal | 
**status** | **str** | Withdrawal status | [default to 'Pending']
**error_code** | **str** | Error code, if any | 
**error_message** | **str** | Descriptive error message, if any | 
**payed_at** | [**PostWithdraws200ResponsePayedAt**](PostWithdraws200ResponsePayedAt.md) |  | 
**payout_account** | [**PostWithdraws200ResponsePayoutAccount**](PostWithdraws200ResponsePayoutAccount.md) |  | 

## Example

```python
from payconductor_sdk.models.post_withdraws200_response import PostWithdraws200Response

# TODO update the JSON string below
json = "{}"
# create an instance of PostWithdraws200Response from a JSON string
post_withdraws200_response_instance = PostWithdraws200Response.from_json(json)
# print the JSON string representation of the object
print(PostWithdraws200Response.to_json())

# convert the object into a dict
post_withdraws200_response_dict = post_withdraws200_response_instance.to_dict()
# create an instance of PostWithdraws200Response from a dict
post_withdraws200_response_from_dict = PostWithdraws200Response.from_dict(post_withdraws200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


