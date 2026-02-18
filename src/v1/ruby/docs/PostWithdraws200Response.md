# OpenapiClient::PostWithdraws200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identificador único do saque |  |
| **external_id** | **String** | ID do saque no sistema no seu sistema |  |
| **external_integration_key** | **String** | Chave do provedor utilizado para o saque |  |
| **external_integration_id** | **String** | ID do saque no provedor de pagamento |  |
| **cost_fee** | **Float** | Taxa de custo aplicada ao saque |  |
| **status** | **String** | Status do saque | [default to &#39;Pending&#39;] |
| **error_code** | **String** | Código do erro, se houver |  |
| **error_message** | **String** | Mensagem descritiva do erro, se houver |  |
| **payed_at** | [**PostWithdraws200ResponsePayedAt**](PostWithdraws200ResponsePayedAt.md) |  |  |
| **payout_account** | [**PostWithdraws200ResponsePayoutAccount**](PostWithdraws200ResponsePayoutAccount.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PostWithdraws200Response.new(
  id: null,
  external_id: null,
  external_integration_key: null,
  external_integration_id: null,
  cost_fee: null,
  status: null,
  error_code: null,
  error_message: null,
  payed_at: null,
  payout_account: null
)
```

