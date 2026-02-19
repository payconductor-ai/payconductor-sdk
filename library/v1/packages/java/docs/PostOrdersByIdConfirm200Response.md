

# PostOrdersByIdConfirm200Response


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **String** | Order ID in the system |  |
|**externalId** | **String** | External order ID (provided by your integration) |  |
|**amount** | **BigDecimal** | Total order amount |  |
|**costFee** | **BigDecimal** | Cost fee applied to the order |  |
|**pix** | [**PostOrders200ResponsePix**](PostOrders200ResponsePix.md) |  |  [optional] |
|**bankSlip** | [**PostOrders200ResponseBankSlip**](PostOrders200ResponseBankSlip.md) |  |  [optional] |
|**nuPay** | [**PostOrders200ResponseNuPay**](PostOrders200ResponseNuPay.md) |  |  [optional] |
|**picPay** | [**PostOrders200ResponsePicPay**](PostOrders200ResponsePicPay.md) |  |  [optional] |
|**status** | **Status** |  |  |
|**paymentMethod** | **PaymentMethod** |  |  |
|**payedAt** | **String** | Date and time when the order was paid (ISO 8601) |  |
|**errorCode** | **String** | Error code, if any |  |
|**errorMessage** | **String** | Error message, if any |  |



