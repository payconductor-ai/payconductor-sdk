# TransferApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getWithdraws**](TransferApi.md#getWithdraws) | **GET** /withdraws/ | List withdrawals |
| [**getWithdrawsById**](TransferApi.md#getWithdrawsById) | **GET** /withdraws/{id} | Get withdrawal by ID |
| [**postWithdraws**](TransferApi.md#postWithdraws) | **POST** /withdraws/ | Create withdrawal |


<a id="getWithdraws"></a>
# **getWithdraws**
> getWithdraws(period, page, pageSize, endDate, startDate, id)

List withdrawals

Returns a paginated list of withdrawals and transfers. Filter by creation date or search by ID (withdrawal ID, external ID, acquirer ID, or End2EndID)

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.TransferApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.payconductor.ai/api/v1");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    TransferApi apiInstance = new TransferApi(defaultClient);
    String period = "Today"; // String | 
    BigDecimal page = new BigDecimal("1"); // BigDecimal | 
    BigDecimal pageSize = new BigDecimal("20"); // BigDecimal | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    String id = "id_example"; // String | 
    try {
      apiInstance.getWithdraws(period, page, pageSize, endDate, startDate, id);
    } catch (ApiException e) {
      System.err.println("Exception when calling TransferApi#getWithdraws");
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
| **period** | **String**|  | [default to Last7Days] [enum: Today, Yesterday, Last7Days, Last30Days, ThisMonth, LastMonth, ThisYear, Custom] |
| **page** | **BigDecimal**|  | [default to 1] |
| **pageSize** | **BigDecimal**|  | [default to 20] |
| **endDate** | **OffsetDateTime**|  | [optional] |
| **startDate** | **OffsetDateTime**|  | [optional] |
| **id** | **String**|  | [optional] |

### Return type

null (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


<a id="getWithdrawsById"></a>
# **getWithdrawsById**
> getWithdrawsById(id)

Get withdrawal by ID

Returns the details of a specific withdrawal or transfer using its ID

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.TransferApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.payconductor.ai/api/v1");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    TransferApi apiInstance = new TransferApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      apiInstance.getWithdrawsById(id);
    } catch (ApiException e) {
      System.err.println("Exception when calling TransferApi#getWithdrawsById");
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
| **id** | **String**|  | |

### Return type

null (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


<a id="postWithdraws"></a>
# **postWithdraws**
> PostWithdraws200Response postWithdraws(postWithdrawsRequest)

Create withdrawal

Create a new withdrawal or transfer to the provided payment account

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.TransferApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.payconductor.ai/api/v1");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    TransferApi apiInstance = new TransferApi(defaultClient);
    PostWithdrawsRequest postWithdrawsRequest = new PostWithdrawsRequest(); // PostWithdrawsRequest | 
    try {
      PostWithdraws200Response result = apiInstance.postWithdraws(postWithdrawsRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TransferApi#postWithdraws");
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
| **postWithdrawsRequest** | [**PostWithdrawsRequest**](PostWithdrawsRequest.md)|  | |

### Return type

[**PostWithdraws200Response**](PostWithdraws200Response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Response for status 200 |  -  |

