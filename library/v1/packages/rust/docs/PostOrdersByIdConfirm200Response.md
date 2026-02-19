# PostOrdersByIdConfirm200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Order ID in the system | 
**external_id** | Option<**String**> | External order ID (provided by your integration) | 
**amount** | **f64** | Total order amount | 
**cost_fee** | **f64** | Cost fee applied to the order | 
**pix** | Option<[**models::PostOrders200ResponsePix**](PostOrders200ResponsePix.md)> |  | [optional]
**bank_slip** | Option<[**models::PostOrders200ResponseBankSlip**](PostOrders200ResponseBankSlip.md)> |  | [optional]
**nu_pay** | Option<[**models::PostOrders200ResponseNuPay**](PostOrders200ResponseNuPay.md)> |  | [optional]
**pic_pay** | Option<[**models::PostOrders200ResponsePicPay**](PostOrders200ResponsePicPay.md)> |  | [optional]
**status** | [**models::Status**](Status.md) |  | 
**payment_method** | [**models::PaymentMethod**](PaymentMethod.md) |  | 
**payed_at** | Option<**String**> | Date and time when the order was paid (ISO 8601) | 
**error_code** | Option<**String**> | Error code, if any | 
**error_message** | Option<**String**> | Error message, if any | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


