# CardTokenizationApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**postCardTokenization**](CardTokenizationApi.md#postCardTokenization) | **POST** /card-tokenization/ | Tokenize card |


<a id="postCardTokenization"></a>
# **postCardTokenization**
> PostCardTokenization200Response postCardTokenization(postCardTokenizationRequest)

Tokenize card

Tokenize credit cards for future charges.

### Example
```kotlin
// Import classes:
//import payconductor_sdk.infrastructure.*
//import payconductor_sdk.models.*

val apiInstance = CardTokenizationApi()
val postCardTokenizationRequest : PostCardTokenizationRequest =  // PostCardTokenizationRequest | Data for creating a customer card
try {
    val result : PostCardTokenization200Response = apiInstance.postCardTokenization(postCardTokenizationRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CardTokenizationApi#postCardTokenization")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CardTokenizationApi#postCardTokenization")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **postCardTokenizationRequest** | [**PostCardTokenizationRequest**](PostCardTokenizationRequest.md)| Data for creating a customer card | |

### Return type

[**PostCardTokenization200Response**](PostCardTokenization200Response.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

