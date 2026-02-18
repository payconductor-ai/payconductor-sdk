# CartODeCrDitoCard


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first_six_card_number** | **str** | Primeiros 6 dígitos do cartão de crédito | [optional] 
**token** | **str** | Token do cartão de crédito gerado anteriormente | 
**cvv** | **str** | Código de segurança do cartão (CVV) | 
**expiration** | [**DadosCompletosDoCartOExpiration**](DadosCompletosDoCartOExpiration.md) |  | 
**holder_name** | **str** | Nome do titular do cartão | 
**number** | **str** | Número do cartão de crédito | 

## Example

```python
from openapi_client.models.cart_ode_cr_dito_card import CartODeCrDitoCard

# TODO update the JSON string below
json = "{}"
# create an instance of CartODeCrDitoCard from a JSON string
cart_ode_cr_dito_card_instance = CartODeCrDitoCard.from_json(json)
# print the JSON string representation of the object
print(CartODeCrDitoCard.to_json())

# convert the object into a dict
cart_ode_cr_dito_card_dict = cart_ode_cr_dito_card_instance.to_dict()
# create an instance of CartODeCrDitoCard from a dict
cart_ode_cr_dito_card_from_dict = CartODeCrDitoCard.from_dict(cart_ode_cr_dito_card_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


