

# PostWithdrawsRequestPayoutAccount


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**ownerDocument** | **String** | Account holder document (CPF or CNPJ) |  |
|**ownerName** | **String** | Account holder name |  |
|**pixKey** | **String** | PIX key for withdrawal |  |
|**pixType** | [**PixTypeEnum**](#PixTypeEnum) | PIX key type |  |



## Enum: PixTypeEnum

| Name | Value |
|---- | -----|
| CNPJ | &quot;Cnpj&quot; |
| CPF | &quot;Cpf&quot; |
| EMAIL | &quot;Email&quot; |
| PHONE | &quot;Phone&quot; |
| RANDOM | &quot;Random&quot; |



