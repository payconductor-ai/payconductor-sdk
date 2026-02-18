# OpenapiClient::Cliente

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | [**EndereODoCliente**](EndereODoCliente.md) |  | [optional] |
| **document_number** | **String** | CPF ou CNPJ do cliente sem formatação |  |
| **document_type** | **String** |  |  |
| **email** | **String** | Email do cliente |  |
| **name** | **String** | Nome completo do cliente |  |
| **phone_number** | **String** | Número de telefone do cliente no formato +55 DD 9XXXXXXXX | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Cliente.new(
  address: null,
  document_number: null,
  document_type: null,
  email: null,
  name: null,
  phone_number: null
)
```

