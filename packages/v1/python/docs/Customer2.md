# Customer2

Schema for creating a new customer

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | [**CustomerAddress**](CustomerAddress.md) |  | [optional] 
**document_number** | **str** | Customer CPF or CNPJ without formatting | 
**document_type** | [**Customer2DocumentType**](Customer2DocumentType.md) |  | 
**email** | **str** | Customer email | 
**name** | **str** | Customer full name | 
**phone_number** | **str** | Customer phone number in +55 DD 9XXXXXXXX format | [optional] 

## Example

```python
from payconductor-sdk.models.customer2 import Customer2

# TODO update the JSON string below
json = "{}"
# create an instance of Customer2 from a JSON string
customer2_instance = Customer2.from_json(json)
# print the JSON string representation of the object
print(Customer2.to_json())

# convert the object into a dict
customer2_dict = customer2_instance.to_dict()
# create an instance of Customer2 from a dict
customer2_from_dict = Customer2.from_dict(customer2_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


