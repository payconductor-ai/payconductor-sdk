

# PostOrders200Response


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **String** | Order ID in the system |  |
|**externalId** | **String** | External order ID (provided by your integration) |  |
|**externalIntegrationKey** | **String** | Provider used to process the order |  |
|**externalIntegrationId** | **String** | Order ID in the payment provider |  |
|**amount** | **BigDecimal** | Total order amount |  |
|**costFee** | **BigDecimal** | Cost fee applied to the order |  |
|**pix** | [**PostOrders200ResponsePix**](PostOrders200ResponsePix.md) |  |  [optional] |
|**bankSlip** | [**PostOrders200ResponseBankSlip**](PostOrders200ResponseBankSlip.md) |  |  [optional] |
|**nuPay** | [**PostOrders200ResponseNuPay**](PostOrders200ResponseNuPay.md) |  |  [optional] |
|**picPay** | [**PostOrders200ResponsePicPay**](PostOrders200ResponsePicPay.md) |  |  [optional] |
|**creditCard** | [**PostOrders200ResponseCreditCard**](PostOrders200ResponseCreditCard.md) |  |  [optional] |
|**status** | [**StatusEnum**](#StatusEnum) |  |  |
|**paymentMethod** | [**PaymentMethodEnum**](#PaymentMethodEnum) |  |  |
|**payedAt** | **String** | Date and time when the order was paid (ISO 8601) |  |
|**errorCode** | **String** | Error code, if any |  |
|**errorMessage** | **String** | Error message, if any |  |
|**orderItems** | [**List&lt;PostOrders200ResponseOrderItemsInner&gt;**](PostOrders200ResponseOrderItemsInner.md) |  |  |
|**session** | [**PostOrders200ResponseSession**](PostOrders200ResponseSession.md) |  |  [optional] |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| GENERATING | &quot;Generating&quot; |
| PENDING | &quot;Pending&quot; |
| COMPLETED | &quot;Completed&quot; |
| FAILED | &quot;Failed&quot; |
| CANCELED | &quot;Canceled&quot; |
| REFUNDING | &quot;Refunding&quot; |
| REFUNDED | &quot;Refunded&quot; |
| IN_DISPUTE | &quot;InDispute&quot; |
| CHARGEBACK | &quot;Chargeback&quot; |



## Enum: PaymentMethodEnum

| Name | Value |
|---- | -----|
| PIX | &quot;Pix&quot; |
| CREDIT_CARD | &quot;CreditCard&quot; |
| DEBIT_CARD | &quot;DebitCard&quot; |
| BANK_SLIP | &quot;BankSlip&quot; |
| CRYPTO | &quot;Crypto&quot; |
| APPLE_PAY | &quot;ApplePay&quot; |
| NU_PAY | &quot;NuPay&quot; |
| PIC_PAY | &quot;PicPay&quot; |
| AMAZON_PAY | &quot;AmazonPay&quot; |
| SEPA_DEBIT | &quot;SepaDebit&quot; |
| GOOGLE_PAY | &quot;GooglePay&quot; |
| DRAFT | &quot;Draft&quot; |



