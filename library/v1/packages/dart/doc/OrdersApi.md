# openapi.api.OrdersApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://app.payconductor.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getOrders**](OrdersApi.md#getorders) | **GET** /orders/ | List orders
[**getOrdersById**](OrdersApi.md#getordersbyid) | **GET** /orders/{id} | Get order by ID
[**postOrders**](OrdersApi.md#postorders) | **POST** /orders/ | Create order
[**postOrdersByIdConfirm**](OrdersApi.md#postordersbyidconfirm) | **POST** /orders/{id}/confirm | Confirm order
[**postOrdersByIdRefund**](OrdersApi.md#postordersbyidrefund) | **POST** /orders/{id}/refund | Refund order


# **getOrders**
> getOrders(page, pageSize, endDate, startDate, id, status)

List orders

Retrieve a list of orders. Use date filter and pagination parameters to refine results as needed.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api = Openapi().getOrdersApi();
final num page = 8.14; // num | 
final num pageSize = 8.14; // num | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String id = id_example; // String | 
final String status = status_example; // String | 

try {
    api.getOrders(page, pageSize, endDate, startDate, id, status);
} on DioException catch (e) {
    print('Exception when calling OrdersApi->getOrders: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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

final api = Openapi().getOrdersApi();
final String id = id_example; // String | 

try {
    api.getOrdersById(id);
} on DioException catch (e) {
    print('Exception when calling OrdersApi->getOrdersById: $e\n');
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

final api = Openapi().getOrdersApi();
final PostOrdersRequest postOrdersRequest = ; // PostOrdersRequest | 

try {
    final response = api.postOrders(postOrdersRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrdersApi->postOrders: $e\n');
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

# **postOrdersByIdConfirm**
> PostOrdersByIdConfirm200Response postOrdersByIdConfirm(id, postOrdersRequestPayment)

Confirm order

Confirms a Draft order, setting the payment method and processing the charges associated with the order.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api = Openapi().getOrdersApi();
final String id = id_example; // String | 
final PostOrdersRequestPayment postOrdersRequestPayment = ; // PostOrdersRequestPayment | Payment data for the order (Pix, Credit Card, Bank Slip, NuPay, etc...)

try {
    final response = api.postOrdersByIdConfirm(id, postOrdersRequestPayment);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrdersApi->postOrdersByIdConfirm: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **postOrdersRequestPayment** | [**PostOrdersRequestPayment**](PostOrdersRequestPayment.md)| Payment data for the order (Pix, Credit Card, Bank Slip, NuPay, etc...) | 

### Return type

[**PostOrdersByIdConfirm200Response**](PostOrdersByIdConfirm200Response.md)

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

final api = Openapi().getOrdersApi();
final String id = id_example; // String | 

try {
    api.postOrdersByIdRefund(id);
} on DioException catch (e) {
    print('Exception when calling OrdersApi->postOrdersByIdRefund: $e\n');
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

