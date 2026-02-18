# NuPayNuPay

Dados específicos para pagamento via NuPay

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cancel_url** | **str** | URL de cancelamento do pagamento | 
**merchant_name** | **str** | Nome do comerciante | 
**return_url** | **str** | URL de retorno após a conclusão do pagamento | 
**store_name** | **str** | Nome da loja | [optional] 

## Example

```python
from openapi_client.models.nu_pay_nu_pay import NuPayNuPay

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


