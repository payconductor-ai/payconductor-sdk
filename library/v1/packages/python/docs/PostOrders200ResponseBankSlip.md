# PostOrders200ResponseBankSlip


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bar_code** | **str** | Bank slip bar code | 
**digitable_line** | **str** | Bank slip digitable line | 
**pdf_url** | **str** | Bank slip PDF URL | [optional] 

## Example

```python
from payconductor_sdk.models.post_orders200_response_bank_slip import PostOrders200ResponseBankSlip

# TODO update the JSON string below
json = "{}"
# create an instance of PostOrders200ResponseBankSlip from a JSON string
post_orders200_response_bank_slip_instance = PostOrders200ResponseBankSlip.from_json(json)
# print the JSON string representation of the object
print(PostOrders200ResponseBankSlip.to_json())

# convert the object into a dict
post_orders200_response_bank_slip_dict = post_orders200_response_bank_slip_instance.to_dict()
# create an instance of PostOrders200ResponseBankSlip from a dict
post_orders200_response_bank_slip_from_dict = PostOrders200ResponseBankSlip.from_dict(post_orders200_response_bank_slip_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


