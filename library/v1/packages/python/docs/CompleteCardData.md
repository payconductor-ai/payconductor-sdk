# CompleteCardData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cvv** | **str** | Card security code (CVV) | 
**expiration** | [**CompleteCardDataExpiration**](CompleteCardDataExpiration.md) |  | 
**holder_name** | **str** | Card holder name | 
**number** | **str** | Credit card number | 

## Example

```python
from payconductor_sdk.models.complete_card_data import CompleteCardData

# TODO update the JSON string below
json = "{}"
# create an instance of CompleteCardData from a JSON string
complete_card_data_instance = CompleteCardData.from_json(json)
# print the JSON string representation of the object
print(CompleteCardData.to_json())

# convert the object into a dict
complete_card_data_dict = complete_card_data_instance.to_dict()
# create an instance of CompleteCardData from a dict
complete_card_data_from_dict = CompleteCardData.from_dict(complete_card_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


