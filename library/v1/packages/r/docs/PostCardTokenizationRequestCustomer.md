# payconductor_sdk::PostCardTokenizationRequestCustomer


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | [**CustomerAddress**](Customer_address.md) |  | [optional] 
**documentNumber** | **character** | Customer CPF or CNPJ without formatting | [Pattern: ^\\d{11}$|^\\d{14}$] 
**documentType** | [**Customer2DocumentType**](Customer_2_documentType.md) |  | 
**email** | **character** | Customer email | 
**name** | **character** | Customer full name | 
**phoneNumber** | **character** | Customer phone number in +55 DD 9XXXXXXXX format | [optional] [Pattern: ^\\+(\\d{1,2}) (\\d{2}) (\\d{8,9})$] 
**id** | **character** | ID do cliente existente | 


