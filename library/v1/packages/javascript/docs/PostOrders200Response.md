# PayconductorSdk.PostOrders200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Order ID in the system | 
**externalId** | **String** | External order ID (provided by your integration) | 
**externalIntegrationKey** | **String** | Provider used to process the order | 
**externalIntegrationId** | **String** | Order ID in the payment provider | 
**amount** | **Number** | Total order amount | 
**costFee** | **Number** | Cost fee applied to the order | 
**pix** | [**PostOrders200ResponsePix**](PostOrders200ResponsePix.md) |  | [optional] 
**bankSlip** | [**PostOrders200ResponseBankSlip**](PostOrders200ResponseBankSlip.md) |  | [optional] 
**nuPay** | [**PostOrders200ResponseNuPay**](PostOrders200ResponseNuPay.md) |  | [optional] 
**picPay** | [**PostOrders200ResponsePicPay**](PostOrders200ResponsePicPay.md) |  | [optional] 
**creditCard** | [**PostOrders200ResponseCreditCard**](PostOrders200ResponseCreditCard.md) |  | [optional] 
**status** | [**Status**](Status.md) |  | 
**paymentMethod** | [**PaymentMethod**](PaymentMethod.md) |  | 
**payedAt** | **String** | Date and time when the order was paid (ISO 8601) | 
**errorCode** | **String** | Error code, if any | 
**errorMessage** | **String** | Error message, if any | 
**orderItems** | [**[PostOrders200ResponseOrderItemsInner]**](PostOrders200ResponseOrderItemsInner.md) |  | 
**session** | [**PostOrders200ResponseSession**](PostOrders200ResponseSession.md) |  | [optional] 


