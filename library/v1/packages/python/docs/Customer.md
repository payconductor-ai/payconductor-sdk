# Customer

Schema for creating a new customer

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | [**CustomerAddress**](CustomerAddress.md) |  | [optional] 
**document_number** | **str** | Customer CPF or CNPJ without formatting | 
**document_type** | [**DocumentType**](DocumentType.md) |  | 
**email** | **str** | Customer email | 
**name** | **str** | Customer full name | 
**phone_number** | **str** | Customer phone number in +55 DD 9XXXXXXXX format | [optional] 

## Example

```python
from payconductor_sdk.models.customer import Customer

# TODO update the JSON string below
json = "{}"
# create an instance of Customer from a JSON string
customer_instance = Customer.from_json(json)
# print the JSON string representation of the object
print(Customer.to_json())

# convert the object into a dict
customer_dict = customer_instance.to_dict()
# create an instance of Customer from a dict
customer_from_dict = Customer.from_dict(customer_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


