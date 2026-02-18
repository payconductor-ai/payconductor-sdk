# OrdersApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**getOrders**](OrdersApi.md#getOrders) | **GET** /orders/ | List orders |
| [**getOrdersById**](OrdersApi.md#getOrdersById) | **GET** /orders/{id} | Get order by ID |
| [**postOrders**](OrdersApi.md#postOrders) | **POST** /orders/ | Create order |
| [**postOrdersByIdRefund**](OrdersApi.md#postOrdersByIdRefund) | **POST** /orders/{id}/refund | Refund order |


<a id="getOrders"></a>
# **getOrders**
> getOrders(period, page, pageSize, endDate, startDate, id, status)

List orders

Retrieve a list of orders. Use date filter and pagination parameters to refine results as needed.

### Example
```kotlin
// Import classes:
//import payconductor-sdk.infrastructure.*
//import payconductor-sdk.models.*

val apiInstance = OrdersApi()
val period : kotlin.String = period_example // kotlin.String | 
val page : java.math.BigDecimal = 8.14 // java.math.BigDecimal | 
val pageSize : java.math.BigDecimal = 8.14 // java.math.BigDecimal | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val id : kotlin.String = id_example // kotlin.String | 
val status : kotlin.String = status_example // kotlin.String | 
try {
    apiInstance.getOrders(period, page, pageSize, endDate, startDate, id, status)
} catch (e: ClientException) {
    println("4xx response calling OrdersApi#getOrders")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OrdersApi#getOrders")
    e.printStackTrace()
}
```

### Parameters
| **period** | **kotlin.String**|  | [default to Period.Last7Days] [enum: Today, Yesterday, Last7Days, Last30Days, ThisMonth, LastMonth, ThisYear, Custom] |
| **page** | **java.math.BigDecimal**|  | [default to 1] |
| **pageSize** | **java.math.BigDecimal**|  | [default to 20] |
| **endDate** | **java.time.OffsetDateTime**|  | [optional] |
| **startDate** | **java.time.OffsetDateTime**|  | [optional] |
| **id** | **kotlin.String**|  | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **status** | **kotlin.String**|  | [optional] [enum: Generating, Pending, Completed, Failed, Canceled, Refunding, Refunded, InDispute, Chargeback] |

### Return type

null (empty response body)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a id="getOrdersById"></a>
# **getOrdersById**
> getOrdersById(id)

Get order by ID

Retrieve the complete data of an order by our ID

### Example
```kotlin
// Import classes:
//import payconductor-sdk.infrastructure.*
//import payconductor-sdk.models.*

val apiInstance = OrdersApi()
val id : kotlin.String = id_example // kotlin.String | 
try {
    apiInstance.getOrdersById(id)
} catch (e: ClientException) {
    println("4xx response calling OrdersApi#getOrdersById")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OrdersApi#getOrdersById")
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

<a id="postOrders"></a>
# **postOrders**
> PostOrders200Response postOrders(postOrdersRequest)

Create order

Create a new order for payment using the provided data

### Example
```kotlin
// Import classes:
//import payconductor-sdk.infrastructure.*
//import payconductor-sdk.models.*

val apiInstance = OrdersApi()
val postOrdersRequest : PostOrdersRequest =  // PostOrdersRequest | 
try {
    val result : PostOrders200Response = apiInstance.postOrders(postOrdersRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OrdersApi#postOrders")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OrdersApi#postOrders")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **postOrdersRequest** | [**PostOrdersRequest**](PostOrdersRequest.md)|  | |

### Return type

[**PostOrders200Response**](PostOrders200Response.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="postOrdersByIdRefund"></a>
# **postOrdersByIdRefund**
> postOrdersByIdRefund(id)

Refund order

Initiate a refund for the order specified by ID.

### Example
```kotlin
// Import classes:
//import payconductor-sdk.infrastructure.*
//import payconductor-sdk.models.*

val apiInstance = OrdersApi()
val id : kotlin.String = id_example // kotlin.String | 
try {
    apiInstance.postOrdersByIdRefund(id)
} catch (e: ClientException) {
    println("4xx response calling OrdersApi#postOrdersByIdRefund")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OrdersApi#postOrdersByIdRefund")
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

