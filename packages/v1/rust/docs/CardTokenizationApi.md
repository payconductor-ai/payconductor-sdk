# \CardTokenizationApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post_card_tokenization**](CardTokenizationApi.md#post_card_tokenization) | **POST** /card-tokenization/ | Tokenize card



## post_card_tokenization

> models::PostCardTokenization200Response post_card_tokenization(post_card_tokenization_request)
Tokenize card

Tokenize credit cards for future charges.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**post_card_tokenization_request** | [**PostCardTokenizationRequest**](PostCardTokenizationRequest.md) | Data for creating a customer card | [required] |

### Return type

[**models::PostCardTokenization200Response**](postCard_tokenization_200_response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

