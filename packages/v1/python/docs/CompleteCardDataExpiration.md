# CompleteCardDataExpiration


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**month** | **float** | Card expiration month | 
**year** | **float** | Card expiration year | 

## Example

```python
from payconductor_sdk.models.complete_card_data_expiration import CompleteCardDataExpiration

# TODO update the JSON string below
json = "{}"
# create an instance of CompleteCardDataExpiration from a JSON string
complete_card_data_expiration_instance = CompleteCardDataExpiration.from_json(json)
# print the JSON string representation of the object
print(CompleteCardDataExpiration.to_json())

# convert the object into a dict
complete_card_data_expiration_dict = complete_card_data_expiration_instance.to_dict()
# create an instance of CompleteCardDataExpiration from a dict
complete_card_data_expiration_from_dict = CompleteCardDataExpiration.from_dict(complete_card_data_expiration_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


