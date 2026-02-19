# Draft

Used to create an order without generating a real payment. Use to create orders that will be paid later

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_method** | [**PaymentMethod**](PaymentMethod.md) |  | 
**expiration_in_seconds** | [**DraftExpirationInSeconds**](DraftExpirationInSeconds.md) |  | [optional] 
**available_payment_methods** | [**List[AvailablePaymentMethods]**](AvailablePaymentMethods.md) | Available payment methods for this order | [optional] 

## Example

```python
from payconductor_sdk.models.draft import Draft

# TODO update the JSON string below
json = "{}"
# create an instance of Draft from a JSON string
draft_instance = Draft.from_json(json)
# print the JSON string representation of the object
print(Draft.to_json())

# convert the object into a dict
draft_dict = draft_instance.to_dict()
# create an instance of Draft from a dict
draft_from_dict = Draft.from_dict(draft_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


