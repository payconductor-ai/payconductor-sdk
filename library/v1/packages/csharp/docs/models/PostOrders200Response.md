# payconductor_sdk.Model.PostOrders200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** | Order ID in the system | 
**ExternalIntegrationKey** | **string** | Provider used to process the order | 
**Amount** | **decimal** | Total order amount | 
**CostFee** | **decimal** | Cost fee applied to the order | 
**Status** | **Status** |  | 
**PaymentMethod** | **PaymentMethod** |  | 
**OrderItems** | [**List&lt;PostOrders200ResponseOrderItemsInner&gt;**](PostOrders200ResponseOrderItemsInner.md) |  | 
**ExternalId** | **string** | External order ID (provided by your integration) | 
**ExternalIntegrationId** | **string** | Order ID in the payment provider | 
**Pix** | [**PostOrders200ResponsePix**](PostOrders200ResponsePix.md) |  | [optional] 
**BankSlip** | [**PostOrders200ResponseBankSlip**](PostOrders200ResponseBankSlip.md) |  | [optional] 
**NuPay** | [**PostOrders200ResponseNuPay**](PostOrders200ResponseNuPay.md) |  | [optional] 
**PicPay** | [**PostOrders200ResponsePicPay**](PostOrders200ResponsePicPay.md) |  | [optional] 
**CreditCard** | [**PostOrders200ResponseCreditCard**](PostOrders200ResponseCreditCard.md) |  | [optional] 
**PayedAt** | **string** | Date and time when the order was paid (ISO 8601) | 
**ErrorCode** | **string** | Error code, if any | 
**ErrorMessage** | **string** | Error message, if any | 
**Session** | [**PostOrders200ResponseSession**](PostOrders200ResponseSession.md) |  | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

