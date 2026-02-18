# CustomerAddress

Schema for creating a new address

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**city** | **str** | City name | 
**country** | **str** | Country code in ISO 3166-1 alpha-2 format | [default to 'BR']
**neighborhood** | **str** | Neighborhood name | 
**number** | **str** | Address number | 
**state** | **str** | State code in ISO 3166-2 format | 
**street** | **str** | Street name | 
**zip_code** | **str** | ZIP code without formatting | 

## Example

```python
from payconductor-sdk.models.customer_address import CustomerAddress

# TODO update the JSON string below
json = "{}"
# create an instance of CustomerAddress from a JSON string
customer_address_instance = CustomerAddress.from_json(json)
# print the JSON string representation of the object
print(CustomerAddress.to_json())

# convert the object into a dict
customer_address_dict = customer_address_instance.to_dict()
# create an instance of CustomerAddress from a dict
customer_address_from_dict = CustomerAddress.from_dict(customer_address_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


