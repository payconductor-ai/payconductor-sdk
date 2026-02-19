# Customer1

Schema for creating a new customer

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | [**CustomerAddress**](CustomerAddress.md) |  | [optional] 
**document_number** | **str** | Customer CPF or CNPJ without formatting | [optional] 
**document_type** | [**DocumentType**](DocumentType.md) |  | [optional] 
**email** | **str** | Customer email | [optional] 
**name** | **str** | Customer full name | [optional] 
**phone_number** | **str** | Customer phone number in +55 DD 9XXXXXXXX format | [optional] 

## Example

```python
from payconductor_sdk.models.customer1 import Customer1

# TODO update the JSON string below
json = "{}"
# create an instance of Customer1 from a JSON string
customer1_instance = Customer1.from_json(json)
# print the JSON string representation of the object
print(Customer1.to_json())

# convert the object into a dict
customer1_dict = customer1_instance.to_dict()
# create an instance of Customer1 from a dict
customer1_from_dict = Customer1.from_dict(customer1_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


