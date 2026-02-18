# OpenapiClient::PostOrdersRequestSession

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expires_in_minutes** | **Float** | Tempo em minutos para expiração da sessão do checkout | [optional][default to 30] |
| **checkout_url** | **String** | URL do checkout para que possamos redirecionar | [optional] |
| **session_id** | **String** | Id gerado pelo nosso serviço para identificar a sessão de checkout | [optional] |
| **external_session_id** | **String** | Id da sessão de checkout gerado pelo lado do cliente. O id deve ser único para cada sessão de carrinho | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PostOrdersRequestSession.new(
  expires_in_minutes: null,
  checkout_url: null,
  session_id: null,
  external_session_id: null
)
```

