# Cliente

Schema para criação de um novo cliente

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | [**EndereODoCliente**](EndereODoCliente.md) |  | [optional] 
**document_number** | **str** | CPF ou CNPJ do cliente sem formatação | 
**document_type** | **str** |  | 
**email** | **str** | Email do cliente | 
**name** | **str** | Nome completo do cliente | 
**phone_number** | **str** | Número de telefone do cliente no formato +55 DD 9XXXXXXXX | [optional] 

## Example

```python
from openapi_client.models.cliente import Cliente

# TODO update the JSON string below
json = "{}"
# create an instance of Cliente from a JSON string
cliente_instance = Cliente.from_json(json)
# print the JSON string representation of the object
print(Cliente.to_json())

# convert the object into a dict
cliente_dict = cliente_instance.to_dict()
# create an instance of Cliente from a dict
cliente_from_dict = Cliente.from_dict(cliente_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


