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
**status** | **String** |  | 
**paymentMethod** | **String** |  | 
**payedAt** | **String** | Date and time when the order was paid (ISO 8601) | 
**errorCode** | **String** | Error code, if any | 
**errorMessage** | **String** | Error message, if any | 
**orderItems** | [**[PostOrders200ResponseOrderItemsInner]**](PostOrders200ResponseOrderItemsInner.md) |  | 
**session** | [**PostOrders200ResponseSession**](PostOrders200ResponseSession.md) |  | [optional] 



## Enum: StatusEnum


* `Generating` (value: `"Generating"`)

* `Pending` (value: `"Pending"`)

* `Completed` (value: `"Completed"`)

* `Failed` (value: `"Failed"`)

* `Canceled` (value: `"Canceled"`)

* `Refunding` (value: `"Refunding"`)

* `Refunded` (value: `"Refunded"`)

* `InDispute` (value: `"InDispute"`)

* `Chargeback` (value: `"Chargeback"`)





## Enum: PaymentMethodEnum


* `Pix` (value: `"Pix"`)

* `CreditCard` (value: `"CreditCard"`)

* `DebitCard` (value: `"DebitCard"`)

* `BankSlip` (value: `"BankSlip"`)

* `Crypto` (value: `"Crypto"`)

* `ApplePay` (value: `"ApplePay"`)

* `NuPay` (value: `"NuPay"`)

* `PicPay` (value: `"PicPay"`)

* `AmazonPay` (value: `"AmazonPay"`)

* `SepaDebit` (value: `"SepaDebit"`)

* `GooglePay` (value: `"GooglePay"`)

* `Draft` (value: `"Draft"`)




