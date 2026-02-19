# payconductor_sdk.Model.PostOrdersByIdConfirm200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** | Order ID in the system | 
**Amount** | **decimal** | Total order amount | 
**CostFee** | **decimal** | Cost fee applied to the order | 
**Status** | **string** |  | 
**PaymentMethod** | **string** |  | 
**ExternalId** | **string** | External order ID (provided by your integration) | 
**Pix** | [**PostOrders200ResponsePix**](PostOrders200ResponsePix.md) |  | [optional] 
**BankSlip** | [**PostOrders200ResponseBankSlip**](PostOrders200ResponseBankSlip.md) |  | [optional] 
**NuPay** | [**PostOrders200ResponseNuPay**](PostOrders200ResponseNuPay.md) |  | [optional] 
**PicPay** | [**PostOrders200ResponsePicPay**](PostOrders200ResponsePicPay.md) |  | [optional] 
**PayedAt** | **string** | Date and time when the order was paid (ISO 8601) | 
**ErrorCode** | **string** | Error code, if any | 
**ErrorMessage** | **string** | Error message, if any | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

