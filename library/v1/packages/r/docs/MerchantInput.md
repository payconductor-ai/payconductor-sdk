# payconductor_sdk::MerchantInput

Merchant data for order or withdrawal

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**document** | **character** | Merchant CPF or CNPJ without formatting | [Pattern: ^\\d{11}$|^\\d{14}$] 
**email** | **character** | Merchant email | 
**name** | **character** | Merchant name | [Max. length: 255] [Min. length: 2] 


