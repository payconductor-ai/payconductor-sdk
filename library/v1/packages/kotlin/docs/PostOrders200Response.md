
# PostOrders200Response

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **id** | **kotlin.String** | Order ID in the system |  |
| **externalId** | **kotlin.String** | External order ID (provided by your integration) |  |
| **externalIntegrationKey** | **kotlin.String** | Provider used to process the order |  |
| **externalIntegrationId** | **kotlin.String** | Order ID in the payment provider |  |
| **amount** | [**java.math.BigDecimal**](java.math.BigDecimal.md) | Total order amount |  |
| **costFee** | [**java.math.BigDecimal**](java.math.BigDecimal.md) | Cost fee applied to the order |  |
| **status** | [**inline**](#Status) |  |  |
| **paymentMethod** | [**inline**](#PaymentMethod) |  |  |
| **payedAt** | **kotlin.String** | Date and time when the order was paid (ISO 8601) |  |
| **errorCode** | **kotlin.String** | Error code, if any |  |
| **errorMessage** | **kotlin.String** | Error message, if any |  |
| **orderItems** | [**kotlin.collections.List&lt;PostOrders200ResponseOrderItemsInner&gt;**](PostOrders200ResponseOrderItemsInner.md) |  |  |
| **pix** | [**PostOrders200ResponsePix**](PostOrders200ResponsePix.md) |  |  [optional] |
| **bankSlip** | [**PostOrders200ResponseBankSlip**](PostOrders200ResponseBankSlip.md) |  |  [optional] |
| **nuPay** | [**PostOrders200ResponseNuPay**](PostOrders200ResponseNuPay.md) |  |  [optional] |
| **picPay** | [**PostOrders200ResponsePicPay**](PostOrders200ResponsePicPay.md) |  |  [optional] |
| **creditCard** | [**PostOrders200ResponseCreditCard**](PostOrders200ResponseCreditCard.md) |  |  [optional] |
| **session** | [**PostOrders200ResponseSession**](PostOrders200ResponseSession.md) |  |  [optional] |


<a id="Status"></a>
## Enum: status
| Name | Value |
| ---- | ----- |
| status | Generating, Pending, Completed, Failed, Canceled, Refunding, Refunded, InDispute, Chargeback |


<a id="PaymentMethod"></a>
## Enum: paymentMethod
| Name | Value |
| ---- | ----- |
| paymentMethod | Pix, CreditCard, DebitCard, BankSlip, Crypto, ApplePay, NuPay, PicPay, AmazonPay, SepaDebit, GooglePay, Draft |



