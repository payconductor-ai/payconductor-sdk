# CustomersApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
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
```kotlin
// Import classes:
//import payconductor_sdk.infrastructure.*
//import payconductor_sdk.models.*

val apiInstance = CustomersApi()
val page : java.math.BigDecimal = 8.14 // java.math.BigDecimal | 
val pageSize : java.math.BigDecimal = 8.14 // java.math.BigDecimal | 
val email : kotlin.String = email_example // kotlin.String | 
val name : kotlin.String = name_example // kotlin.String | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    apiInstance.getCustomers(page, pageSize, email, name, endDate, startDate)
} catch (e: ClientException) {
    println("4xx response calling CustomersApi#getCustomers")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CustomersApi#getCustomers")
    e.printStackTrace()
}
```

### Parameters
| **page** | **java.math.BigDecimal**|  | [default to 1] |
| **pageSize** | **java.math.BigDecimal**|  | [default to 20] |
| **email** | **kotlin.String**|  | [optional] |
| **name** | **kotlin.String**|  | [optional] |
| **endDate** | **java.time.OffsetDateTime**|  | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **startDate** | **java.time.OffsetDateTime**|  | [optional] |

### Return type

null (empty response body)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a id="getCustomersById"></a>
# **getCustomersById**
> getCustomersById(id)

Get customer by ID

Retrieve the complete details of a specific customer using their unique ID.

### Example
```kotlin
// Import classes:
//import payconductor_sdk.infrastructure.*
//import payconductor_sdk.models.*

val apiInstance = CustomersApi()
val id : kotlin.String = id_example // kotlin.String | 
try {
    apiInstance.getCustomersById(id)
} catch (e: ClientException) {
    println("4xx response calling CustomersApi#getCustomersById")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CustomersApi#getCustomersById")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **kotlin.String**|  | |

### Return type

null (empty response body)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a id="patchCustomersById"></a>
# **patchCustomersById**
> patchCustomersById(id, customer1)

Update customer data

Update the information of an existing customer by providing the new data in the request body.

### Example
```kotlin
// Import classes:
//import payconductor_sdk.infrastructure.*
//import payconductor_sdk.models.*

val apiInstance = CustomersApi()
val id : kotlin.String = id_example // kotlin.String | 
val customer1 : Customer1 =  // Customer1 | Schema for creating a new customer
try {
    apiInstance.patchCustomersById(id, customer1)
} catch (e: ClientException) {
    println("4xx response calling CustomersApi#patchCustomersById")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CustomersApi#patchCustomersById")
    e.printStackTrace()
}
```

### Parameters
| **id** | **kotlin.String**|  | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **customer1** | [**Customer1**](Customer1.md)| Schema for creating a new customer | |

### Return type

null (empty response body)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

<a id="postCustomers"></a>
# **postCustomers**
> postCustomers(customer)

Create new customer

Create a new customer by providing the required data in the request body.

### Example
```kotlin
// Import classes:
//import payconductor_sdk.infrastructure.*
//import payconductor_sdk.models.*

val apiInstance = CustomersApi()
val customer : Customer =  // Customer | Schema for creating a new customer
try {
    apiInstance.postCustomers(customer)
} catch (e: ClientException) {
    println("4xx response calling CustomersApi#postCustomers")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CustomersApi#postCustomers")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **customer** | [**Customer**](Customer.md)| Schema for creating a new customer | |

### Return type

null (empty response body)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

