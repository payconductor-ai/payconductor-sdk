# TransfersApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**getWithdraws**](TransfersApi.md#getWithdraws) | **GET** /withdraws/ | List withdrawals |
| [**getWithdrawsById**](TransfersApi.md#getWithdrawsById) | **GET** /withdraws/{id} | Get withdrawal by ID |
| [**postWithdraws**](TransfersApi.md#postWithdraws) | **POST** /withdraws/ | Create withdrawal |


<a id="getWithdraws"></a>
# **getWithdraws**
> getWithdraws(page, pageSize, endDate, startDate, id)

List withdrawals

Returns a paginated list of withdrawals and transfers. Filter by creation date or search by ID (withdrawal ID, external ID, acquirer ID, or End2EndID)

### Example
```kotlin
// Import classes:
//import payconductor_sdk.infrastructure.*
//import payconductor_sdk.models.*

val apiInstance = TransfersApi()
val page : java.math.BigDecimal = 8.14 // java.math.BigDecimal | 
val pageSize : java.math.BigDecimal = 8.14 // java.math.BigDecimal | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val id : kotlin.String = id_example // kotlin.String | 
try {
    apiInstance.getWithdraws(page, pageSize, endDate, startDate, id)
} catch (e: ClientException) {
    println("4xx response calling TransfersApi#getWithdraws")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TransfersApi#getWithdraws")
    e.printStackTrace()
}
```

### Parameters
| **page** | **java.math.BigDecimal**|  | [default to 1] |
| **pageSize** | **java.math.BigDecimal**|  | [default to 20] |
| **endDate** | **java.time.OffsetDateTime**|  | [optional] |
| **startDate** | **java.time.OffsetDateTime**|  | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **kotlin.String**|  | [optional] |

### Return type

null (empty response body)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a id="getWithdrawsById"></a>
# **getWithdrawsById**
> getWithdrawsById(id)

Get withdrawal by ID

Returns the details of a specific withdrawal or transfer using its ID

### Example
```kotlin
// Import classes:
//import payconductor_sdk.infrastructure.*
//import payconductor_sdk.models.*

val apiInstance = TransfersApi()
val id : kotlin.String = id_example // kotlin.String | 
try {
    apiInstance.getWithdrawsById(id)
} catch (e: ClientException) {
    println("4xx response calling TransfersApi#getWithdrawsById")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TransfersApi#getWithdrawsById")
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

<a id="postWithdraws"></a>
# **postWithdraws**
> PostWithdraws200Response postWithdraws(postWithdrawsRequest)

Create withdrawal

Create a new withdrawal or transfer to the provided payment account

### Example
```kotlin
// Import classes:
//import payconductor_sdk.infrastructure.*
//import payconductor_sdk.models.*

val apiInstance = TransfersApi()
val postWithdrawsRequest : PostWithdrawsRequest =  // PostWithdrawsRequest | 
try {
    val result : PostWithdraws200Response = apiInstance.postWithdraws(postWithdrawsRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TransfersApi#postWithdraws")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TransfersApi#postWithdraws")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **postWithdrawsRequest** | [**PostWithdrawsRequest**](PostWithdrawsRequest.md)|  | |

### Return type

[**PostWithdraws200Response**](PostWithdraws200Response.md)

### Authorization


Configure basicAuth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

