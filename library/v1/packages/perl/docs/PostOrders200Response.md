# WWW::OpenAPIClient::Object::PostOrders200Response

## Load the model package
```perl
use WWW::OpenAPIClient::Object::PostOrders200Response;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | Order ID in the system | 
**external_id** | **string** | External order ID (provided by your integration) | 
**external_integration_key** | **string** | Provider used to process the order | 
**external_integration_id** | **string** | Order ID in the payment provider | 
**amount** | **double** | Total order amount | 
**cost_fee** | **double** | Cost fee applied to the order | 
**pix** | [**PostOrders200ResponsePix**](PostOrders200ResponsePix.md) |  | [optional] 
**bank_slip** | [**PostOrders200ResponseBankSlip**](PostOrders200ResponseBankSlip.md) |  | [optional] 
**nu_pay** | [**PostOrders200ResponseNuPay**](PostOrders200ResponseNuPay.md) |  | [optional] 
**pic_pay** | [**PostOrders200ResponsePicPay**](PostOrders200ResponsePicPay.md) |  | [optional] 
**credit_card** | [**PostOrders200ResponseCreditCard**](PostOrders200ResponseCreditCard.md) |  | [optional] 
**status** | **string** |  | 
**payment_method** | **string** |  | 
**payed_at** | **string** | Date and time when the order was paid (ISO 8601) | 
**error_code** | **string** | Error code, if any | 
**error_message** | **string** | Error message, if any | 
**order_items** | [**ARRAY[PostOrders200ResponseOrderItemsInner]**](PostOrders200ResponseOrderItemsInner.md) |  | 
**session** | [**PostOrders200ResponseSession**](PostOrders200ResponseSession.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


