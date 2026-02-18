# Pix


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_method** | **str** |  | 
**expiration_in_seconds** | [**PixExpirationInSeconds**](PixExpirationInSeconds.md) |  | [optional] 

## Example

```python
from openapi_client.models.pix import Pix

# TODO update the JSON string below
json = "{}"
# create an instance of Pix from a JSON string
pix_instance = Pix.from_json(json)
# print the JSON string representation of the object
print(Pix.to_json())

# convert the object into a dict
pix_dict = pix_instance.to_dict()
# create an instance of Pix from a dict
pix_from_dict = Pix.from_dict(pix_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


