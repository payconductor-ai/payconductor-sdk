# # PostOrdersByIdConfirm200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | Order ID in the system |
**external_id** | **string** | External order ID (provided by your integration) |
**amount** | **float** | Total order amount |
**cost_fee** | **float** | Cost fee applied to the order |
**pix** | [**\OpenAPI\Client\Model\PostOrders200ResponsePix**](PostOrders200ResponsePix.md) |  | [optional]
**bank_slip** | [**\OpenAPI\Client\Model\PostOrders200ResponseBankSlip**](PostOrders200ResponseBankSlip.md) |  | [optional]
**nu_pay** | [**\OpenAPI\Client\Model\PostOrders200ResponseNuPay**](PostOrders200ResponseNuPay.md) |  | [optional]
**pic_pay** | [**\OpenAPI\Client\Model\PostOrders200ResponsePicPay**](PostOrders200ResponsePicPay.md) |  | [optional]
**status** | **string** |  |
**payment_method** | **string** |  |
**payed_at** | **string** | Date and time when the order was paid (ISO 8601) |
**error_code** | **string** | Error code, if any |
**error_message** | **string** | Error message, if any |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
