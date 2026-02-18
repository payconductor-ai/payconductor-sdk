# DadosCompletosDoCartO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cvv** | **str** | Código de segurança do cartão (CVV) | 
**expiration** | [**DadosCompletosDoCartOExpiration**](DadosCompletosDoCartOExpiration.md) |  | 
**holder_name** | **str** | Nome do titular do cartão | 
**number** | **str** | Número do cartão de crédito | 

## Example

```python
from openapi_client.models.dados_completos_do_cart_o import DadosCompletosDoCartO

# TODO update the JSON string below
json = "{}"
# create an instance of DadosCompletosDoCartO from a JSON string
dados_completos_do_cart_o_instance = DadosCompletosDoCartO.from_json(json)
# print the JSON string representation of the object
print(DadosCompletosDoCartO.to_json())

# convert the object into a dict
dados_completos_do_cart_o_dict = dados_completos_do_cart_o_instance.to_dict()
# create an instance of DadosCompletosDoCartO from a dict
dados_completos_do_cart_o_from_dict = DadosCompletosDoCartO.from_dict(dados_completos_do_cart_o_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


