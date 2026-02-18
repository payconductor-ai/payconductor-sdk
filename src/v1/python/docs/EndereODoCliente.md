# EndereODoCliente

Schema para criação de um novo endereço

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**city** | **str** | Nome da cidade | 
**country** | **str** | Código do país no formato ISO 3166-1 alpha-2 | [default to 'BR']
**neighborhood** | **str** | Nome do bairro | 
**number** | **str** | Número do endereço | 
**state** | **str** | Código do estado no formato ISO 3166-2 | 
**street** | **str** | Nome da rua | 
**zip_code** | **str** | CEP sem formatação | 

## Example

```python
from openapi_client.models.endere_odo_cliente import EndereODoCliente

# TODO update the JSON string below
json = "{}"
# create an instance of EndereODoCliente from a JSON string
endere_odo_cliente_instance = EndereODoCliente.from_json(json)
# print the JSON string representation of the object
print(EndereODoCliente.to_json())

# convert the object into a dict
endere_odo_cliente_dict = endere_odo_cliente_instance.to_dict()
# create an instance of EndereODoCliente from a dict
endere_odo_cliente_from_dict = EndereODoCliente.from_dict(endere_odo_cliente_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


