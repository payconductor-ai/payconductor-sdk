# CartODeCrDito


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_method** | **str** |  | 
**card** | [**CartODeCrDitoCard**](CartODeCrDitoCard.md) |  | 
**installments** | [**CartODeCrDitoInstallments**](CartODeCrDitoInstallments.md) |  | 
**soft_descriptor** | **str** | Texto que aparecerá na fatura do cartão (soft descriptor) | [optional] 

## Example

```python
from openapi_client.models.cart_ode_cr_dito import CartODeCrDito

# TODO update the JSON string below
json = "{}"
# create an instance of CartODeCrDito from a JSON string
cart_ode_cr_dito_instance = CartODeCrDito.from_json(json)
# print the JSON string representation of the object
print(CartODeCrDito.to_json())

# convert the object into a dict
cart_ode_cr_dito_dict = cart_ode_cr_dito_instance.to_dict()
# create an instance of CartODeCrDito from a dict
cart_ode_cr_dito_from_dict = CartODeCrDito.from_dict(cart_ode_cr_dito_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


