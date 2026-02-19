# # PostOrdersRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**charge_amount** | **float** | Total amount to be charged on the order in floating point value |
**client_ip** | **string** | Client IP address |
**customer** | [**\OpenAPI\Client\Model\Customer**](Customer.md) |  |
**discount_amount** | **float** | Discount amount | [default to 0]
**external_id** | **string** | Order ID in your system |
**fingerprints** | [**\OpenAPI\Client\Model\PostOrdersRequestFingerprints**](PostOrdersRequestFingerprints.md) |  | [optional]
**items** | [**\OpenAPI\Client\Model\PostOrdersRequestItemsInner[]**](PostOrdersRequestItemsInner.md) | List of products or services in the order | [optional]
**merchant** | [**\OpenAPI\Client\Model\MerchantInput**](MerchantInput.md) |  | [optional]
**payment** | [**\OpenAPI\Client\Model\PostOrdersRequestPayment**](PostOrdersRequestPayment.md) |  |
**split_amount_total** | **float** | Total split amount to be paid to the merchant (Used only for reporting purposes, does not generate actual split) | [optional]
**session** | [**\OpenAPI\Client\Model\PostOrdersRequestSession**](PostOrdersRequestSession.md) |  | [optional]
**shipping_fee** | **float** | Shipping fee | [default to 0]
**tax_fee** | **float** | Additional fees | [default to 0]
**metadata** | **object** | Additional metadata for the order as key-value pairs. Keys should not contain spaces or special characters | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
