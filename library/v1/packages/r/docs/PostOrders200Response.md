# payconductor_sdk::PostOrders200Response


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **character** | Order ID in the system | 
**externalId** | **character** | External order ID (provided by your integration) | 
**externalIntegrationKey** | **character** | Provider used to process the order | 
**externalIntegrationId** | **character** | Order ID in the payment provider | 
**amount** | **numeric** | Total order amount | 
**costFee** | **numeric** | Cost fee applied to the order | 
**pix** | [**PostOrders200ResponsePix**](postOrders_200_response_pix.md) |  | [optional] 
**bankSlip** | [**PostOrders200ResponseBankSlip**](postOrders_200_response_bankSlip.md) |  | [optional] 
**nuPay** | [**PostOrders200ResponseNuPay**](postOrders_200_response_nuPay.md) |  | [optional] 
**picPay** | [**PostOrders200ResponsePicPay**](postOrders_200_response_picPay.md) |  | [optional] 
**creditCard** | [**PostOrders200ResponseCreditCard**](postOrders_200_response_creditCard.md) |  | [optional] 
**status** | **character** |  | [Enum: [Generating, Pending, Completed, Failed, Canceled, Refunding, Refunded, InDispute, Chargeback]] 
**paymentMethod** | **character** |  | [Enum: [Pix, CreditCard, DebitCard, BankSlip, Crypto, ApplePay, NuPay, PicPay, AmazonPay, SepaDebit, GooglePay, Draft]] 
**payedAt** | **character** | Date and time when the order was paid (ISO 8601) | 
**errorCode** | **character** | Error code, if any | 
**errorMessage** | **character** | Error message, if any | 
**orderItems** | [**array[PostOrders200ResponseOrderItemsInner]**](postOrders_200_response_orderItems_inner.md) |  | 
**session** | [**PostOrders200ResponseSession**](postOrders_200_response_session.md) |  | [optional] 


