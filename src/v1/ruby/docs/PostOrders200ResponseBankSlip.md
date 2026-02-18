# OpenapiClient::PostOrders200ResponseBankSlip

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bar_code** | **String** | Código de barras do boleto |  |
| **digitable_line** | **String** | Linha digitável do boleto |  |
| **pdf_url** | **String** | URL do PDF do boleto | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PostOrders200ResponseBankSlip.new(
  bar_code: null,
  digitable_line: null,
  pdf_url: null
)
```

