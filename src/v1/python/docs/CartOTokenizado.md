# CartOTokenizado


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first_six_card_number** | **str** | Primeiros 6 dígitos do cartão de crédito | [optional] 
**token** | **str** | Token do cartão de crédito gerado anteriormente | 

## Example

```python
from openapi_client.models.cart_o_tokenizado import CartOTokenizado

# TODO update the JSON string below
json = "{}"
# create an instance of CartOTokenizado from a JSON string
cart_o_tokenizado_instance = CartOTokenizado.from_json(json)
# print the JSON string representation of the object
print(CartOTokenizado.to_json())

# convert the object into a dict
cart_o_tokenizado_dict = cart_o_tokenizado_instance.to_dict()
# create an instance of CartOTokenizado from a dict
cart_o_tokenizado_from_dict = CartOTokenizado.from_dict(cart_o_tokenizado_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


