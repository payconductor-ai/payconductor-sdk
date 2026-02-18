# payconductor-sdk.Model.PostOrdersRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ChargeAmount** | **decimal** | Total amount to be charged on the order in floating point value | 
**ClientIp** | **string** | Client IP address | 
**Customer** | [**Customer**](Customer.md) |  | 
**ExternalId** | **string** | Order ID in your system | 
**Payment** | [**PostOrdersRequestPayment**](PostOrdersRequestPayment.md) |  | 
**DiscountAmount** | **decimal** | Discount amount | [default to 0M]
**Fingerprints** | [**PostOrdersRequestFingerprints**](PostOrdersRequestFingerprints.md) |  | [optional] 
**Items** | [**List&lt;PostOrdersRequestItemsInner&gt;**](PostOrdersRequestItemsInner.md) | List of products or services in the order | [optional] 
**Merchant** | [**MerchantInput**](MerchantInput.md) |  | [optional] 
**SplitAmountTotal** | **decimal** | Total split amount to be paid to the merchant (Used only for reporting purposes, does not generate actual split) | [optional] 
**Session** | [**PostOrdersRequestSession**](PostOrdersRequestSession.md) |  | [optional] 
**ShippingFee** | **decimal** | Shipping fee | [default to 0M]
**TaxFee** | **decimal** | Additional fees | [default to 0M]
**Metadata** | **Object** | Additional metadata for the order as key-value pairs. Keys should not contain spaces or special characters | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

