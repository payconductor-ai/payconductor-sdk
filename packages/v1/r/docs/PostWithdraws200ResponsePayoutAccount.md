# payconductor-sdk::PostWithdraws200ResponsePayoutAccount


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **character** | Unique payment account identifier | 
**ownerDocument** | **character** | Account holder document (CPF or CNPJ) | [Pattern: ^\\d{11}$|^\\d{14}$] 
**ownerName** | **character** | Account holder name | 
**pixKey** | **character** | PIX key used for the withdrawal | 
**pixType** | **character** | PIX key type | [default to &quot;Cpf&quot;] [Enum: [Cpf, Cnpj, Email, Phone, Random]] 


