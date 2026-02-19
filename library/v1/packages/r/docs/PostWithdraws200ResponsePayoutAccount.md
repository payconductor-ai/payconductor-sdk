# payconductor_sdk::PostWithdraws200ResponsePayoutAccount


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **character** | Unique payment account identifier | 
**ownerDocument** | **character** | Account holder document (CPF or CNPJ) | [Pattern: ^\\d{11}$|^\\d{14}$] 
**ownerName** | **character** | Account holder name | 
**pixKey** | **character** | PIX key used for the withdrawal | 
**pixType** | [**PixType**](PixType.md) |  | [Enum: ] 


