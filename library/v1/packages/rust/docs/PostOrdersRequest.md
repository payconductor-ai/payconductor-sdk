# PostOrdersRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**charge_amount** | **f64** | Total amount to be charged on the order in floating point value | 
**client_ip** | **String** | Client IP address | 
**customer** | [**models::Customer**](Customer.md) |  | 
**discount_amount** | **f64** | Discount amount | [default to 0]
**external_id** | **String** | Order ID in your system | 
**fingerprints** | Option<[**models::PostOrdersRequestFingerprints**](PostOrdersRequestFingerprints.md)> |  | [optional]
**items** | Option<[**Vec<models::PostOrdersRequestItemsInner>**](PostOrdersRequestItemsInner.md)> | List of products or services in the order | [optional]
**merchant** | Option<[**models::MerchantInput**](MerchantInput.md)> |  | [optional]
**payment** | [**models::PostOrdersRequestPayment**](PostOrdersRequestPayment.md) |  | 
**split_amount_total** | Option<**f64**> | Total split amount to be paid to the merchant (Used only for reporting purposes, does not generate actual split) | [optional]
**session** | Option<[**models::PostOrdersRequestSession**](PostOrdersRequestSession.md)> |  | [optional]
**shipping_fee** | **f64** | Shipping fee | [default to 0]
**tax_fee** | **f64** | Additional fees | [default to 0]
**metadata** | Option<**serde_json::Value**> | Additional metadata for the order as key-value pairs. Keys should not contain spaces or special characters | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


