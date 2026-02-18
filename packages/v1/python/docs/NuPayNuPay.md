# NuPayNuPay

Specific data for NuPay payment

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cancel_url** | **str** | Payment cancellation URL | 
**merchant_name** | **str** | Merchant name | 
**return_url** | **str** | Return URL after payment completion | 
**store_name** | **str** | Store name | [optional] 

## Example

```python
from payconductor-sdk.models.nu_pay_nu_pay import NuPayNuPay

# TODO update the JSON string below
json = "{}"
# create an instance of NuPayNuPay from a JSON string
nu_pay_nu_pay_instance = NuPayNuPay.from_json(json)
# print the JSON string representation of the object
print(NuPayNuPay.to_json())

# convert the object into a dict
nu_pay_nu_pay_dict = nu_pay_nu_pay_instance.to_dict()
# create an instance of NuPayNuPay from a dict
nu_pay_nu_pay_from_dict = NuPayNuPay.from_dict(nu_pay_nu_pay_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


