# MerchantInput

Dados do merchant para pedido ou saque

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**document** | **str** | CPF ou CNPJ do merchant sem formatação | 
**email** | **str** | Email do merchant | 
**name** | **str** | Nome do merchant | 

## Example

```python
from openapi_client.models.merchant_input import MerchantInput

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


