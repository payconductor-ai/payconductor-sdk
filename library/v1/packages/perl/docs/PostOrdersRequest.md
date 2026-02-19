# WWW::OpenAPIClient::Object::PostOrdersRequest

## Load the model package
```perl
use WWW::OpenAPIClient::Object::PostOrdersRequest;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**charge_amount** | **double** | Total amount to be charged on the order in floating point value | 
**client_ip** | **string** | Client IP address | 
**customer** | [**Customer**](Customer.md) |  | 
**discount_amount** | **double** | Discount amount | [default to 0]
**external_id** | **string** | Order ID in your system | 
**fingerprints** | [**PostOrdersRequestFingerprints**](PostOrdersRequestFingerprints.md) |  | [optional] 
**items** | [**ARRAY[PostOrdersRequestItemsInner]**](PostOrdersRequestItemsInner.md) | List of products or services in the order | [optional] 
**merchant** | [**MerchantInput**](MerchantInput.md) |  | [optional] 
**payment** | [**PostOrdersRequestPayment**](PostOrdersRequestPayment.md) |  | 
**split_amount_total** | **double** | Total split amount to be paid to the merchant (Used only for reporting purposes, does not generate actual split) | [optional] 
**session** | [**PostOrdersRequestSession**](PostOrdersRequestSession.md) |  | [optional] 
**shipping_fee** | **double** | Shipping fee | [default to 0]
**tax_fee** | **double** | Additional fees | [default to 0]
**metadata** | **object** | Additional metadata for the order as key-value pairs. Keys should not contain spaces or special characters | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


