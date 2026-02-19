# BankSlip


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_method** | [**PaymentMethod**](PaymentMethod.md) |  | 
**expiration_in_days** | [**BankSlipExpirationInDays**](BankSlipExpirationInDays.md) |  | [optional] 

## Example

```python
from payconductor_sdk.models.bank_slip import BankSlip

# TODO update the JSON string below
json = "{}"
# create an instance of BankSlip from a JSON string
bank_slip_instance = BankSlip.from_json(json)
# print the JSON string representation of the object
print(BankSlip.to_json())

# convert the object into a dict
bank_slip_dict = bank_slip_instance.to_dict()
# create an instance of BankSlip from a dict
bank_slip_from_dict = BankSlip.from_dict(bank_slip_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


