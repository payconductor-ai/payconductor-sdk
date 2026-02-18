# TokenizedCard


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first_six_card_number** | **str** | First 6 digits of the credit card | [optional] 
**token** | **str** | Previously generated credit card token | 

## Example

```python
from payconductor-sdk.models.tokenized_card import TokenizedCard

# TODO update the JSON string below
json = "{}"
# create an instance of TokenizedCard from a JSON string
tokenized_card_instance = TokenizedCard.from_json(json)
# print the JSON string representation of the object
print(TokenizedCard.to_json())

# convert the object into a dict
tokenized_card_dict = tokenized_card_instance.to_dict()
# create an instance of TokenizedCard from a dict
tokenized_card_from_dict = TokenizedCard.from_dict(tokenized_card_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


