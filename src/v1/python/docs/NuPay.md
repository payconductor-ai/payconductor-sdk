# NuPay


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_method** | **str** |  | 
**nu_pay** | [**NuPayNuPay**](NuPayNuPay.md) |  | 

## Example

```python
from openapi_client.models.nu_pay import NuPay

# TODO update the JSON string below
json = "{}"
# create an instance of NuPay from a JSON string
nu_pay_instance = NuPay.from_json(json)
# print the JSON string representation of the object
print(NuPay.to_json())

# convert the object into a dict
nu_pay_dict = nu_pay_instance.to_dict()
# create an instance of NuPay from a dict
nu_pay_from_dict = NuPay.from_dict(nu_pay_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


