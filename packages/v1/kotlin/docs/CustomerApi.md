# CustomerApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**deleteCustomersById**](CustomerApi.md#deleteCustomersById) | **DELETE** /customers/{id} |  |
| [**getCustomers**](CustomerApi.md#getCustomers) | **GET** /customers/ |  |
| [**getCustomersById**](CustomerApi.md#getCustomersById) | **GET** /customers/{id} |  |
| [**patchCustomersById**](CustomerApi.md#patchCustomersById) | **PATCH** /customers/{id} |  |
| [**postCustomers**](CustomerApi.md#postCustomers) | **POST** /customers/ |  |


<a id="deleteCustomersById"></a>
# **deleteCustomersById**
> deleteCustomersById(id)



### Example
```kotlin
// Import classes:
//import payconductor-sdk.infrastructure.*
//import payconductor-sdk.models.*

val apiInstance = CustomerApi()
val id : kotlin.String = id_example // kotlin.String | 
try {
    apiInstance.deleteCustomersById(id)
} catch (e: ClientException) {
    println("4xx response calling CustomerApi#deleteCustomersById")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CustomerApi#deleteCustomersById")
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

<a id="getCustomers"></a>
# **getCustomers**
> getCustomers(page, pageSize, period, email, name, endDate, startDate)



### Example
```kotlin
// Import classes:
//import payconductor-sdk.infrastructure.*
//import payconductor-sdk.models.*

val apiInstance = CustomerApi()
val page : java.math.BigDecimal = 8.14 // java.math.BigDecimal | 
val pageSize : java.math.BigDecimal = 8.14 // java.math.BigDecimal | 
val period : kotlin.String = period_example // kotlin.String | 
val email : kotlin.String = email_example // kotlin.String | 
val name : kotlin.String = name_example // kotlin.String | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    apiInstance.getCustomers(page, pageSize, period, email, name, endDate, startDate)
} catch (e: ClientException) {
    println("4xx response calling CustomerApi#getCustomers")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CustomerApi#getCustomers")
    e.printStackTrace()
}
```

### Parameters
| **page** | **java.math.BigDecimal**|  | [default to 1] |
| **pageSize** | **java.math.BigDecimal**|  | [default to 20] |
| **period** | **kotlin.String**|  | [default to Period.Last7Days] [enum: Today, Yesterday, Last7Days, Last30Days, ThisMonth, LastMonth, ThisYear, Custom] |
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



### Example
```kotlin
// Import classes:
//import payconductor-sdk.infrastructure.*
//import payconductor-sdk.models.*

val apiInstance = CustomerApi()
val id : kotlin.String = id_example // kotlin.String | 
try {
    apiInstance.getCustomersById(id)
} catch (e: ClientException) {
    println("4xx response calling CustomerApi#getCustomersById")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CustomerApi#getCustomersById")
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



### Example
```kotlin
// Import classes:
//import payconductor-sdk.infrastructure.*
//import payconductor-sdk.models.*

val apiInstance = CustomerApi()
val id : kotlin.String = id_example // kotlin.String | 
val customer1 : Customer1 =  // Customer1 | Schema for creating a new customer
try {
    apiInstance.patchCustomersById(id, customer1)
} catch (e: ClientException) {
    println("4xx response calling CustomerApi#patchCustomersById")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CustomerApi#patchCustomersById")
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



### Example
```kotlin
// Import classes:
//import payconductor-sdk.infrastructure.*
//import payconductor-sdk.models.*

val apiInstance = CustomerApi()
val customer : Customer =  // Customer | Schema for creating a new customer
try {
    apiInstance.postCustomers(customer)
} catch (e: ClientException) {
    println("4xx response calling CustomerApi#postCustomers")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CustomerApi#postCustomers")
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

