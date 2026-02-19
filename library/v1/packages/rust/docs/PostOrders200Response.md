# PostOrders200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Order ID in the system | 
**external_id** | Option<**String**> | External order ID (provided by your integration) | 
**external_integration_key** | **String** | Provider used to process the order | 
**external_integration_id** | Option<**String**> | Order ID in the payment provider | 
**amount** | **f64** | Total order amount | 
**cost_fee** | **f64** | Cost fee applied to the order | 
**pix** | Option<[**models::PostOrders200ResponsePix**](PostOrders200ResponsePix.md)> |  | [optional]
**bank_slip** | Option<[**models::PostOrders200ResponseBankSlip**](PostOrders200ResponseBankSlip.md)> |  | [optional]
**nu_pay** | Option<[**models::PostOrders200ResponseNuPay**](PostOrders200ResponseNuPay.md)> |  | [optional]
**pic_pay** | Option<[**models::PostOrders200ResponsePicPay**](PostOrders200ResponsePicPay.md)> |  | [optional]
**credit_card** | Option<[**models::PostOrders200ResponseCreditCard**](PostOrders200ResponseCreditCard.md)> |  | [optional]
**status** | **Status** |  (enum: Generating, Pending, Completed, Failed, Canceled, Refunding, Refunded, InDispute, Chargeback) | 
**payment_method** | **PaymentMethod** |  (enum: Pix, CreditCard, DebitCard, BankSlip, Crypto, ApplePay, NuPay, PicPay, AmazonPay, SepaDebit, GooglePay, Draft) | 
**payed_at** | Option<**String**> | Date and time when the order was paid (ISO 8601) | 
**error_code** | Option<**String**> | Error code, if any | 
**error_message** | Option<**String**> | Error message, if any | 
**order_items** | [**Vec<models::PostOrders200ResponseOrderItemsInner>**](PostOrders200ResponseOrderItemsInner.md) |  | 
**session** | Option<[**models::PostOrders200ResponseSession**](PostOrders200ResponseSession.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


