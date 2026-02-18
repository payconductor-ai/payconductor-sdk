# PostOrders200ResponseNuPay


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_url** | **str** | NuPay payment URL | 

## Example

```python
from payconductor-sdk.models.post_orders200_response_nu_pay import PostOrders200ResponseNuPay

# TODO update the JSON string below
json = "{}"
# create an instance of PostOrders200ResponseNuPay from a JSON string
post_orders200_response_nu_pay_instance = PostOrders200ResponseNuPay.from_json(json)
# print the JSON string representation of the object
print(PostOrders200ResponseNuPay.to_json())

# convert the object into a dict
post_orders200_response_nu_pay_dict = post_orders200_response_nu_pay_instance.to_dict()
# create an instance of PostOrders200ResponseNuPay from a dict
post_orders200_response_nu_pay_from_dict = PostOrders200ResponseNuPay.from_dict(post_orders200_response_nu_pay_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


