# CreditCardCard


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first_six_card_number** | **str** | First 6 digits of the credit card | [optional] 
**token** | **str** | Previously generated credit card token | 
**cvv** | **str** | Card security code (CVV) | 
**expiration** | [**CompleteCardDataExpiration**](CompleteCardDataExpiration.md) |  | 
**holder_name** | **str** | Card holder name | 
**number** | **str** | Credit card number | 

## Example

```python
from payconductor_sdk.models.credit_card_card import CreditCardCard

# TODO update the JSON string below
json = "{}"
# create an instance of CreditCardCard from a JSON string
credit_card_card_instance = CreditCardCard.from_json(json)
# print the JSON string representation of the object
print(CreditCardCard.to_json())

# convert the object into a dict
credit_card_card_dict = credit_card_card_instance.to_dict()
# create an instance of CreditCardCard from a dict
credit_card_card_from_dict = CreditCardCard.from_dict(credit_card_card_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


