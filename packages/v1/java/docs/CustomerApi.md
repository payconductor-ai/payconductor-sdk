# CustomerApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**deleteCustomersById**](CustomerApi.md#deleteCustomersById) | **DELETE** /customers/{id} |  |
| [**getCustomers**](CustomerApi.md#getCustomers) | **GET** /customers/ |  |
| [**getCustomersById**](CustomerApi.md#getCustomersById) | **GET** /customers/{id} |  |
| [**patchCustomersById**](CustomerApi.md#patchCustomersById) | **PATCH** /customers/{id} |  |
| [**postCustomers**](CustomerApi.md#postCustomers) | **POST** /customers/ |  |


<a id="deleteCustomersById"></a>
# **deleteCustomersById**
> deleteCustomersById(id)



### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CustomerApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.payconductor.ai/api/v1");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    CustomerApi apiInstance = new CustomerApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      apiInstance.deleteCustomersById(id);
    } catch (ApiException e) {
      System.err.println("Exception when calling CustomerApi#deleteCustomersById");
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


<a id="getCustomers"></a>
# **getCustomers**
> getCustomers(page, pageSize, period, email, name, endDate, startDate)



### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CustomerApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.payconductor.ai/api/v1");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    CustomerApi apiInstance = new CustomerApi(defaultClient);
    BigDecimal page = new BigDecimal("1"); // BigDecimal | 
    BigDecimal pageSize = new BigDecimal("20"); // BigDecimal | 
    String period = "Today"; // String | 
    String email = "email_example"; // String | 
    String name = "name_example"; // String | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    try {
      apiInstance.getCustomers(page, pageSize, period, email, name, endDate, startDate);
    } catch (ApiException e) {
      System.err.println("Exception when calling CustomerApi#getCustomers");
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
| **period** | **String**|  | [default to Last7Days] [enum: Today, Yesterday, Last7Days, Last30Days, ThisMonth, LastMonth, ThisYear, Custom] |
| **email** | **String**|  | [optional] |
| **name** | **String**|  | [optional] |
| **endDate** | **OffsetDateTime**|  | [optional] |
| **startDate** | **OffsetDateTime**|  | [optional] |

### Return type

null (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


<a id="getCustomersById"></a>
# **getCustomersById**
> getCustomersById(id)



### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CustomerApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.payconductor.ai/api/v1");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    CustomerApi apiInstance = new CustomerApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      apiInstance.getCustomersById(id);
    } catch (ApiException e) {
      System.err.println("Exception when calling CustomerApi#getCustomersById");
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


<a id="patchCustomersById"></a>
# **patchCustomersById**
> patchCustomersById(id, customer1)



### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CustomerApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.payconductor.ai/api/v1");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    CustomerApi apiInstance = new CustomerApi(defaultClient);
    String id = "id_example"; // String | 
    Customer1 customer1 = new Customer1(); // Customer1 | Schema for creating a new customer
    try {
      apiInstance.patchCustomersById(id, customer1);
    } catch (ApiException e) {
      System.err.println("Exception when calling CustomerApi#patchCustomersById");
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
| **customer1** | [**Customer1**](Customer1.md)| Schema for creating a new customer | |

### Return type

null (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined


<a id="postCustomers"></a>
# **postCustomers**
> postCustomers(customer)



### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CustomerApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.payconductor.ai/api/v1");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    CustomerApi apiInstance = new CustomerApi(defaultClient);
    Customer customer = new Customer(); // Customer | Schema for creating a new customer
    try {
      apiInstance.postCustomers(customer);
    } catch (ApiException e) {
      System.err.println("Exception when calling CustomerApi#postCustomers");
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
| **customer** | [**Customer**](Customer.md)| Schema for creating a new customer | |

### Return type

null (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined


