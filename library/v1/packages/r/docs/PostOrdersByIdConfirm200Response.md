# payconductor_sdk::PostOrdersByIdConfirm200Response


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **character** | Order ID in the system | 
**externalId** | **character** | External order ID (provided by your integration) | 
**amount** | **numeric** | Total order amount | 
**costFee** | **numeric** | Cost fee applied to the order | 
**pix** | [**PostOrders200ResponsePix**](postOrders_200_response_pix.md) |  | [optional] 
**bankSlip** | [**PostOrders200ResponseBankSlip**](postOrders_200_response_bankSlip.md) |  | [optional] 
**nuPay** | [**PostOrders200ResponseNuPay**](postOrders_200_response_nuPay.md) |  | [optional] 
**picPay** | [**PostOrders200ResponsePicPay**](postOrders_200_response_picPay.md) |  | [optional] 
**status** | [**Status**](Status.md) |  | [Enum: ] 
**paymentMethod** | [**PaymentMethod**](PaymentMethod.md) |  | [Enum: ] 
**payedAt** | **character** | Date and time when the order was paid (ISO 8601) | 
**errorCode** | **character** | Error code, if any | 
**errorMessage** | **character** | Error message, if any | 


