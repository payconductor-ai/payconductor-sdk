# CreditCard


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_method** | **str** |  | 
**card** | [**CreditCardCard**](CreditCardCard.md) |  | 
**installments** | [**CreditCardInstallments**](CreditCardInstallments.md) |  | 
**soft_descriptor** | **str** | Text that will appear on the card statement (soft descriptor) | [optional] 

## Example

```python
from payconductor-sdk.models.credit_card import CreditCard

# TODO update the JSON string below
json = "{}"
# create an instance of CreditCard from a JSON string
credit_card_instance = CreditCard.from_json(json)
# print the JSON string representation of the object
print(CreditCard.to_json())

# convert the object into a dict
credit_card_dict = credit_card_instance.to_dict()
# create an instance of CreditCard from a dict
credit_card_from_dict = CreditCard.from_dict(credit_card_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


