# OrdersApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getOrders**](OrdersApi.md#getOrders) | **GET** /orders/ | List orders |
| [**getOrdersById**](OrdersApi.md#getOrdersById) | **GET** /orders/{id} | Get order by ID |
| [**postOrders**](OrdersApi.md#postOrders) | **POST** /orders/ | Create order |
| [**postOrdersByIdConfirm**](OrdersApi.md#postOrdersByIdConfirm) | **POST** /orders/{id}/confirm | Confirm order |
| [**postOrdersByIdRefund**](OrdersApi.md#postOrdersByIdRefund) | **POST** /orders/{id}/refund | Refund order |


<a id="getOrders"></a>
# **getOrders**
> getOrders(page, pageSize, endDate, startDate, id, status)

List orders

Retrieve a list of orders. Use date filter and pagination parameters to refine results as needed.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.OrdersApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.payconductor.ai/api/v1");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    OrdersApi apiInstance = new OrdersApi(defaultClient);
    BigDecimal page = new BigDecimal("1"); // BigDecimal | 
    BigDecimal pageSize = new BigDecimal("20"); // BigDecimal | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    String id = "id_example"; // String | 
    String status = "Generating"; // String | 
    try {
      apiInstance.getOrders(page, pageSize, endDate, startDate, id, status);
    } catch (ApiException e) {
      System.err.println("Exception when calling OrdersApi#getOrders");
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
| **page** | **BigDecimal**|  | [default to 1] |
| **pageSize** | **BigDecimal**|  | [default to 20] |
| **endDate** | **OffsetDateTime**|  | [optional] |
| **startDate** | **OffsetDateTime**|  | [optional] |
| **id** | **String**|  | [optional] |
| **status** | **String**|  | [optional] [enum: Generating, Pending, Completed, Failed, Canceled, Refunding, Refunded, InDispute, Chargeback] |

### Return type

null (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


<a id="getOrdersById"></a>
# **getOrdersById**
> getOrdersById(id)

Get order by ID

Retrieve the complete data of an order by our ID

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.OrdersApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.payconductor.ai/api/v1");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    OrdersApi apiInstance = new OrdersApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      apiInstance.getOrdersById(id);
    } catch (ApiException e) {
      System.err.println("Exception when calling OrdersApi#getOrdersById");
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


<a id="postOrders"></a>
# **postOrders**
> PostOrders200Response postOrders(postOrdersRequest)

Create order

Create a new order for payment using the provided data

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.OrdersApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.payconductor.ai/api/v1");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    OrdersApi apiInstance = new OrdersApi(defaultClient);
    PostOrdersRequest postOrdersRequest = new PostOrdersRequest(); // PostOrdersRequest | 
    try {
      PostOrders200Response result = apiInstance.postOrders(postOrdersRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OrdersApi#postOrders");
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
| **postOrdersRequest** | [**PostOrdersRequest**](PostOrdersRequest.md)|  | |

### Return type

[**PostOrders200Response**](PostOrders200Response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Response for status 200 |  -  |

<a id="postOrdersByIdConfirm"></a>
# **postOrdersByIdConfirm**
> PostOrdersByIdConfirm200Response postOrdersByIdConfirm(id, postOrdersRequestPayment)

Confirm order

Confirms a Draft order, setting the payment method and processing the charges associated with the order.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.OrdersApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.payconductor.ai/api/v1");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    OrdersApi apiInstance = new OrdersApi(defaultClient);
    String id = "id_example"; // String | 
    PostOrdersRequestPayment postOrdersRequestPayment = new PostOrdersRequestPayment(); // PostOrdersRequestPayment | Payment data for the order (Pix, Credit Card, Bank Slip, NuPay, etc...)
    try {
      PostOrdersByIdConfirm200Response result = apiInstance.postOrdersByIdConfirm(id, postOrdersRequestPayment);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OrdersApi#postOrdersByIdConfirm");
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
| **postOrdersRequestPayment** | [**PostOrdersRequestPayment**](PostOrdersRequestPayment.md)| Payment data for the order (Pix, Credit Card, Bank Slip, NuPay, etc...) | |

### Return type

[**PostOrdersByIdConfirm200Response**](PostOrdersByIdConfirm200Response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Response for status 200 |  -  |

<a id="postOrdersByIdRefund"></a>
# **postOrdersByIdRefund**
> postOrdersByIdRefund(id)

Refund order

Initiate a refund for the order specified by ID.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.OrdersApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.payconductor.ai/api/v1");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    OrdersApi apiInstance = new OrdersApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      apiInstance.postOrdersByIdRefund(id);
    } catch (ApiException e) {
      System.err.println("Exception when calling OrdersApi#postOrdersByIdRefund");
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


