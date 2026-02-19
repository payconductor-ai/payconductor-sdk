
# PostOrdersByIdConfirm200Response

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **id** | **kotlin.String** | Order ID in the system |  |
| **externalId** | **kotlin.String** | External order ID (provided by your integration) |  |
| **amount** | [**java.math.BigDecimal**](java.math.BigDecimal.md) | Total order amount |  |
| **costFee** | [**java.math.BigDecimal**](java.math.BigDecimal.md) | Cost fee applied to the order |  |
| **status** | [**Status**](Status.md) |  |  |
| **paymentMethod** | [**PaymentMethod**](PaymentMethod.md) |  |  |
| **payedAt** | **kotlin.String** | Date and time when the order was paid (ISO 8601) |  |
| **errorCode** | **kotlin.String** | Error code, if any |  |
| **errorMessage** | **kotlin.String** | Error message, if any |  |
| **pix** | [**PostOrders200ResponsePix**](PostOrders200ResponsePix.md) |  |  [optional] |
| **bankSlip** | [**PostOrders200ResponseBankSlip**](PostOrders200ResponseBankSlip.md) |  |  [optional] |
| **nuPay** | [**PostOrders200ResponseNuPay**](PostOrders200ResponseNuPay.md) |  |  [optional] |
| **picPay** | [**PostOrders200ResponsePicPay**](PostOrders200ResponsePicPay.md) |  |  [optional] |



