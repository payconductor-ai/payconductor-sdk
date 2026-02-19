# OpenapiClient::PostOrders200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Order ID in the system |  |
| **external_id** | **String** | External order ID (provided by your integration) |  |
| **external_integration_key** | **String** | Provider used to process the order |  |
| **external_integration_id** | **String** | Order ID in the payment provider |  |
| **amount** | **Float** | Total order amount |  |
| **cost_fee** | **Float** | Cost fee applied to the order |  |
| **pix** | [**PostOrders200ResponsePix**](PostOrders200ResponsePix.md) |  | [optional] |
| **bank_slip** | [**PostOrders200ResponseBankSlip**](PostOrders200ResponseBankSlip.md) |  | [optional] |
| **nu_pay** | [**PostOrders200ResponseNuPay**](PostOrders200ResponseNuPay.md) |  | [optional] |
| **pic_pay** | [**PostOrders200ResponsePicPay**](PostOrders200ResponsePicPay.md) |  | [optional] |
| **credit_card** | [**PostOrders200ResponseCreditCard**](PostOrders200ResponseCreditCard.md) |  | [optional] |
| **status** | **String** |  |  |
| **payment_method** | **String** |  |  |
| **payed_at** | **String** | Date and time when the order was paid (ISO 8601) |  |
| **error_code** | **String** | Error code, if any |  |
| **error_message** | **String** | Error message, if any |  |
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

