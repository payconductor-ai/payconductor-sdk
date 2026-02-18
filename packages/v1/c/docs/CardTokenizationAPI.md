# CardTokenizationAPI

All URIs are relative to *https://app.payconductor.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CardTokenizationAPI_postCardTokenization**](CardTokenizationAPI.md#CardTokenizationAPI_postCardTokenization) | **POST** /card-tokenization/ | Tokenize card


# **CardTokenizationAPI_postCardTokenization**
```c
// Tokenize card
//
// Tokenize credit cards for future charges.
//
post_card_tokenization_200_response_t* CardTokenizationAPI_postCardTokenization(apiClient_t *apiClient, post_card_tokenization_request_t *post_card_tokenization_request);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**post_card_tokenization_request** | **[post_card_tokenization_request_t](post_card_tokenization_request.md) \*** | Data for creating a customer card | 

### Return type

[post_card_tokenization_200_response_t](post_card_tokenization_200_response.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

