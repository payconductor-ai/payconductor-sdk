# MerchantInput

Merchant data for order or withdrawal

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**document** | **str** | Merchant CPF or CNPJ without formatting | 
**email** | **str** | Merchant email | 
**name** | **str** | Merchant name | 

## Example

```python
from payconductor_sdk.models.merchant_input import MerchantInput

# TODO update the JSON string below
json = "{}"
# create an instance of MerchantInput from a JSON string
merchant_input_instance = MerchantInput.from_json(json)
# print the JSON string representation of the object
print(MerchantInput.to_json())

# convert the object into a dict
merchant_input_dict = merchant_input_instance.to_dict()
# create an instance of MerchantInput from a dict
merchant_input_from_dict = MerchantInput.from_dict(merchant_input_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


