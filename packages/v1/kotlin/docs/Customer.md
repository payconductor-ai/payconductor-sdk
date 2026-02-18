
# Customer

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **documentNumber** | **kotlin.String** | Customer CPF or CNPJ without formatting |  |
| **documentType** | [**inline**](#DocumentType) |  |  |
| **email** | **kotlin.String** | Customer email |  |
| **name** | **kotlin.String** | Customer full name |  |
| **address** | [**CustomerAddress**](CustomerAddress.md) |  |  [optional] |
| **phoneNumber** | **kotlin.String** | Customer phone number in +55 DD 9XXXXXXXX format |  [optional] |


<a id="DocumentType"></a>
## Enum: documentType
| Name | Value |
| ---- | ----- |
| documentType | Cpf, Cnpj |



