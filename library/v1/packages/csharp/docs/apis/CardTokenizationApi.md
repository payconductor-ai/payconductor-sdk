# payconductor_sdk.Api.CardTokenizationApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**PostCardTokenization**](CardTokenizationApi.md#postcardtokenization) | **POST** /card-tokenization/ | Tokenize card |

<a id="postcardtokenization"></a>
# **PostCardTokenization**
> PostCardTokenization200Response PostCardTokenization (PostCardTokenizationRequest postCardTokenizationRequest)

Tokenize card

Tokenize credit cards for future charges.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **postCardTokenizationRequest** | [**PostCardTokenizationRequest**](PostCardTokenizationRequest.md) | Data for creating a customer card |  |

### Return type

[**PostCardTokenization200Response**](PostCardTokenization200Response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Response for status 200 |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

