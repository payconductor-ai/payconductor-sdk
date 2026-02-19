# OpenapiClient::PostOrdersByIdConfirm200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Order ID in the system |  |
| **external_id** | **String** | External order ID (provided by your integration) |  |
| **amount** | **Float** | Total order amount |  |
| **cost_fee** | **Float** | Cost fee applied to the order |  |
| **pix** | [**PostOrders200ResponsePix**](PostOrders200ResponsePix.md) |  | [optional] |
| **bank_slip** | [**PostOrders200ResponseBankSlip**](PostOrders200ResponseBankSlip.md) |  | [optional] |
| **nu_pay** | [**PostOrders200ResponseNuPay**](PostOrders200ResponseNuPay.md) |  | [optional] |
| **pic_pay** | [**PostOrders200ResponsePicPay**](PostOrders200ResponsePicPay.md) |  | [optional] |
| **status** | **String** |  |  |
| **payment_method** | **String** |  |  |
| **payed_at** | **String** | Date and time when the order was paid (ISO 8601) |  |
| **error_code** | **String** | Error code, if any |  |
| **error_message** | **String** | Error message, if any |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PostOrdersByIdConfirm200Response.new(
  id: null,
  external_id: null,
  amount: null,
  cost_fee: null,
  pix: null,
  bank_slip: null,
  nu_pay: null,
  pic_pay: null,
  status: null,
  payment_method: null,
  payed_at: null,
  error_code: null,
  error_message: null
)
```

