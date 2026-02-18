

# Customer

Schema for creating a new customer

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**address** | [**CustomerAddress**](CustomerAddress.md) |  |  [optional] |
|**documentNumber** | **String** | Customer CPF or CNPJ without formatting |  |
|**documentType** | [**DocumentTypeEnum**](#DocumentTypeEnum) |  |  |
|**email** | **String** | Customer email |  |
|**name** | **String** | Customer full name |  |
|**phoneNumber** | **String** | Customer phone number in +55 DD 9XXXXXXXX format |  [optional] |



## Enum: DocumentTypeEnum

| Name | Value |
|---- | -----|
| CPF | &quot;Cpf&quot; |
| CNPJ | &quot;Cnpj&quot; |



