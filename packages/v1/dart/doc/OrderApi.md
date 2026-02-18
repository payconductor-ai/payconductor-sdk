# openapi.api.OrderApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://app.payconductor.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getOrders**](OrderApi.md#getorders) | **GET** /orders/ | List orders
[**getOrdersById**](OrderApi.md#getordersbyid) | **GET** /orders/{id} | Get order by ID
[**postOrders**](OrderApi.md#postorders) | **POST** /orders/ | Create order
[**postOrdersByIdRefund**](OrderApi.md#postordersbyidrefund) | **POST** /orders/{id}/refund | Refund order


# **getOrders**
> getOrders(period, page, pageSize, endDate, startDate, id, status)

List orders

Retrieve a list of orders. Use date filter and pagination parameters to refine results as needed.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api = Openapi().getOrderApi();
final String period = period_example; // String | 
final num page = 8.14; // num | 
final num pageSize = 8.14; // num | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String id = id_example; // String | 
final String status = status_example; // String | 

try {
    api.getOrders(period, page, pageSize, endDate, startDate, id, status);
} on DioException catch (e) {
    print('Exception when calling OrderApi->getOrders: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **period** | **String**|  | [default to 'Last7Days']
 **page** | **num**|  | [default to 1]
 **pageSize** | **num**|  | [default to 20]
 **endDate** | **DateTime**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **id** | **String**|  | [optional] 
 **status** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrdersById**
> getOrdersById(id)

Get order by ID

Retrieve the complete data of an order by our ID

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api = Openapi().getOrderApi();
final String id = id_example; // String | 

try {
    api.getOrdersById(id);
} on DioException catch (e) {
    print('Exception when calling OrderApi->getOrdersById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postOrders**
> PostOrders200Response postOrders(postOrdersRequest)

Create order

Create a new order for payment using the provided data

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api = Openapi().getOrderApi();
final PostOrdersRequest postOrdersRequest = ; // PostOrdersRequest | 

try {
    final response = api.postOrders(postOrdersRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrderApi->postOrders: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postOrdersRequest** | [**PostOrdersRequest**](PostOrdersRequest.md)|  | 

### Return type

[**PostOrders200Response**](PostOrders200Response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postOrdersByIdRefund**
> postOrdersByIdRefund(id)

Refund order

Initiate a refund for the order specified by ID.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api = Openapi().getOrderApi();
final String id = id_example; // String | 

try {
    api.postOrdersByIdRefund(id);
} on DioException catch (e) {
    print('Exception when calling OrderApi->postOrdersByIdRefund: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

