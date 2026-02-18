# Boleto


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_method** | **str** |  | 
**expiration_in_days** | [**BoletoExpirationInDays**](BoletoExpirationInDays.md) |  | [optional] 

## Example

```python
from openapi_client.models.boleto import Boleto

# TODO update the JSON string below
json = "{}"
# create an instance of Boleto from a JSON string
boleto_instance = Boleto.from_json(json)
# print the JSON string representation of the object
print(Boleto.to_json())

# convert the object into a dict
boleto_dict = boleto_instance.to_dict()
# create an instance of Boleto from a dict
boleto_from_dict = Boleto.from_dict(boleto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


