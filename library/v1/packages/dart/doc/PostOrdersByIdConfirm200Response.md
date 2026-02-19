# openapi.model.PostOrdersByIdConfirm200Response

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Order ID in the system | 
**externalId** | **String** | External order ID (provided by your integration) | 
**amount** | **num** | Total order amount | 
**costFee** | **num** | Cost fee applied to the order | 
**pix** | [**PostOrders200ResponsePix**](PostOrders200ResponsePix.md) |  | [optional] 
**bankSlip** | [**PostOrders200ResponseBankSlip**](PostOrders200ResponseBankSlip.md) |  | [optional] 
**nuPay** | [**PostOrders200ResponseNuPay**](PostOrders200ResponseNuPay.md) |  | [optional] 
**picPay** | [**PostOrders200ResponsePicPay**](PostOrders200ResponsePicPay.md) |  | [optional] 
**status** | [**Status**](Status.md) |  | 
**paymentMethod** | [**PaymentMethod**](PaymentMethod.md) |  | 
**payedAt** | **String** | Date and time when the order was paid (ISO 8601) | 
**errorCode** | **String** | Error code, if any | 
**errorMessage** | **String** | Error message, if any | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


