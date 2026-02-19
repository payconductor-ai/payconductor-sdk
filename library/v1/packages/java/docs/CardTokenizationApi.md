# CardTokenizationApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**postCardTokenization**](CardTokenizationApi.md#postCardTokenization) | **POST** /card-tokenization/ | Tokenize card |


<a id="postCardTokenization"></a>
# **postCardTokenization**
> PostCardTokenization200Response postCardTokenization(postCardTokenizationRequest)

Tokenize card

Tokenize credit cards for future charges.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CardTokenizationApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.payconductor.ai/api/v1");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    CardTokenizationApi apiInstance = new CardTokenizationApi(defaultClient);
    PostCardTokenizationRequest postCardTokenizationRequest = new PostCardTokenizationRequest(); // PostCardTokenizationRequest | Data for creating a customer card
    try {
      PostCardTokenization200Response result = apiInstance.postCardTokenization(postCardTokenizationRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CardTokenizationApi#postCardTokenization");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **postCardTokenizationRequest** | [**PostCardTokenizationRequest**](PostCardTokenizationRequest.md)| Data for creating a customer card | |

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

