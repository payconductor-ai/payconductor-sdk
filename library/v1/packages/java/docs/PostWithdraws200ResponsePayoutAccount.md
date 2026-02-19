

# PostWithdraws200ResponsePayoutAccount


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **String** | Unique payment account identifier |  |
|**ownerDocument** | **String** | Account holder document (CPF or CNPJ) |  |
|**ownerName** | **String** | Account holder name |  |
|**pixKey** | **String** | PIX key used for the withdrawal |  |
|**pixType** | [**PixTypeEnum**](#PixTypeEnum) | PIX key type |  |



## Enum: PixTypeEnum

| Name | Value |
|---- | -----|
| CPF | &quot;Cpf&quot; |
| CNPJ | &quot;Cnpj&quot; |
| EMAIL | &quot;Email&quot; |
| PHONE | &quot;Phone&quot; |
| RANDOM | &quot;Random&quot; |



