# OpenapiClient::PostWithdraws200ResponsePayoutAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identificador único da conta de pagamento |  |
| **owner_document** | **String** | Documento do titular da conta (CPF ou CNPJ) |  |
| **owner_name** | **String** | Nome do titular da conta |  |
| **pix_key** | **String** | Chave PIX utilizada para o saque |  |
| **pix_type** | **String** | Tipo da chave PIX | [default to &#39;Cpf&#39;] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PostWithdraws200ResponsePayoutAccount.new(
  id: null,
  owner_document: null,
  owner_name: null,
  pix_key: null,
  pix_type: null
)
```

