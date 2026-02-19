# payconductor_sdk::Customer

Schema for creating a new customer

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | [**CustomerAddress**](Customer_address.md) |  | [optional] 
**documentNumber** | **character** | Customer CPF or CNPJ without formatting | [Pattern: ^\\d{11}$|^\\d{14}$] 
**documentType** | **character** |  | [Enum: [Cpf, Cnpj]] 
**email** | **character** | Customer email | 
**name** | **character** | Customer full name | 
**phoneNumber** | **character** | Customer phone number in +55 DD 9XXXXXXXX format | [optional] [Pattern: ^\\+(\\d{1,2}) (\\d{2}) (\\d{8,9})$] 


