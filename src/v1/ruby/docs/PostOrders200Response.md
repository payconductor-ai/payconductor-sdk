# OpenapiClient::PostOrders200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID do pedido no sistema |  |
| **external_id** | **String** | ID externo do pedido (fornecido pela sua integração) |  |
| **external_integration_key** | **String** | Provedor utilizada para processar o pedido |  |
| **external_integration_id** | **String** | ID do pedido no provedor de pagamento |  |
| **amount** | **Float** | Valor total do pedido |  |
| **cost_fee** | **Float** | Taxa de custo aplicada ao pedido |  |
| **pix** | [**PostOrders200ResponsePix**](PostOrders200ResponsePix.md) |  | [optional] |
| **bank_slip** | [**PostOrders200ResponseBankSlip**](PostOrders200ResponseBankSlip.md) |  | [optional] |
| **nu_pay** | [**PostOrders200ResponseNuPay**](PostOrders200ResponseNuPay.md) |  | [optional] |
| **pic_pay** | [**PostOrders200ResponsePicPay**](PostOrders200ResponsePicPay.md) |  | [optional] |
| **credit_card** | [**PostOrders200ResponseCreditCard**](PostOrders200ResponseCreditCard.md) |  | [optional] |
| **status** | **String** |  |  |
| **payment_method** | **String** |  |  |
| **payed_at** | **String** | Data e hora em que o pedido foi pago (ISO 8601) |  |
| **error_code** | **String** | Código de erro, se houver |  |
| **error_message** | **String** | Mensagem de erro, se houver |  |
| **order_items** | [**Array&lt;PostOrders200ResponseOrderItemsInner&gt;**](PostOrders200ResponseOrderItemsInner.md) |  |  |
| **session** | [**PostOrders200ResponseSession**](PostOrders200ResponseSession.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PostOrders200Response.new(
  id: null,
  external_id: null,
  external_integration_key: null,
  external_integration_id: null,
  amount: null,
  cost_fee: null,
  pix: null,
  bank_slip: null,
  nu_pay: null,
  pic_pay: null,
  credit_card: null,
  status: null,
  payment_method: null,
  payed_at: null,
  error_code: null,
  error_message: null,
  order_items: null,
  session: null
)
```

