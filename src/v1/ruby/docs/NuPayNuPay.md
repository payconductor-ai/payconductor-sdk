# OpenapiClient::NuPayNuPay

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cancel_url** | **String** | URL de cancelamento do pagamento |  |
| **merchant_name** | **String** | Nome do comerciante |  |
| **return_url** | **String** | URL de retorno após a conclusão do pagamento |  |
| **store_name** | **String** | Nome da loja | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::NuPayNuPay.new(
  cancel_url: null,
  merchant_name: null,
  return_url: null,
  store_name: null
)
```

