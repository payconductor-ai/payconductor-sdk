# CustomersApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getCustomers**](CustomersApi.md#getCustomers) | **GET** /customers/ | Get all customers |
| [**getCustomersById**](CustomersApi.md#getCustomersById) | **GET** /customers/{id} | Get customer by ID |
| [**patchCustomersById**](CustomersApi.md#patchCustomersById) | **PATCH** /customers/{id} | Update customer data |
| [**postCustomers**](CustomersApi.md#postCustomers) | **POST** /customers/ | Create new customer |


<a id="getCustomers"></a>
# **getCustomers**
> getCustomers(page, pageSize, email, name, endDate, startDate)

Get all customers

Retrieve a list of all customers associated with the organization, with support for filters and pagination.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CustomersApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.payconductor.ai/api/v1");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    CustomersApi apiInstance = new CustomersApi(defaultClient);
    BigDecimal page = new BigDecimal("1"); // BigDecimal | 
    BigDecimal pageSize = new BigDecimal("20"); // BigDecimal | 
    String email = "email_example"; // String | 
    String name = "name_example"; // String | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    try {
      apiInstance.getCustomers(page, pageSize, email, name, endDate, startDate);
    } catch (ApiException e) {
      System.err.println("Exception when calling CustomersApi#getCustomers");
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

Get customer by ID

Retrieve the complete details of a specific customer using their unique ID.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CustomersApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.payconductor.ai/api/v1");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    CustomersApi apiInstance = new CustomersApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      apiInstance.getCustomersById(id);
    } catch (ApiException e) {
      System.err.println("Exception when calling CustomersApi#getCustomersById");
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

Update customer data

Update the information of an existing customer by providing the new data in the request body.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CustomersApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.payconductor.ai/api/v1");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    CustomersApi apiInstance = new CustomersApi(defaultClient);
    String id = "id_example"; // String | 
    Customer1 customer1 = new Customer1(); // Customer1 | Schema for creating a new customer
    try {
      apiInstance.patchCustomersById(id, customer1);
    } catch (ApiException e) {
      System.err.println("Exception when calling CustomersApi#patchCustomersById");
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

Create new customer

Create a new customer by providing the required data in the request body.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CustomersApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.payconductor.ai/api/v1");
    
    // Configure HTTP basic authorization: basicAuth
    HttpBasicAuth basicAuth = (HttpBasicAuth) defaultClient.getAuthentication("basicAuth");
    basicAuth.setUsername("YOUR USERNAME");
    basicAuth.setPassword("YOUR PASSWORD");

    CustomersApi apiInstance = new CustomersApi(defaultClient);
    Customer customer = new Customer(); // Customer | Schema for creating a new customer
    try {
      apiInstance.postCustomers(customer);
    } catch (ApiException e) {
      System.err.println("Exception when calling CustomersApi#postCustomers");
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


