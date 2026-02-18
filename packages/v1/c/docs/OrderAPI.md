# OrderAPI

All URIs are relative to *https://app.payconductor.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**OrderAPI_getOrders**](OrderAPI.md#OrderAPI_getOrders) | **GET** /orders/ | List orders
[**OrderAPI_getOrdersById**](OrderAPI.md#OrderAPI_getOrdersById) | **GET** /orders/{id} | Get order by ID
[**OrderAPI_postOrders**](OrderAPI.md#OrderAPI_postOrders) | **POST** /orders/ | Create order
[**OrderAPI_postOrdersByIdRefund**](OrderAPI.md#OrderAPI_postOrdersByIdRefund) | **POST** /orders/{id}/refund | Refund order


# **OrderAPI_getOrders**
```c
// List orders
//
// Retrieve a list of orders. Use date filter and pagination parameters to refine results as needed.
//
void OrderAPI_getOrders(apiClient_t *apiClient, payconductor_api_getOrders_period_e period, double page, double pageSize, char endDate, char startDate, char *id, payconductor_api_getOrders_status_e status);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**period** | **payconductor_api_getOrders_period_e** |  | [default to &#39;Last7Days&#39;]
**page** | **double** |  | [default to 1]
**pageSize** | **double** |  | [default to 20]
**endDate** | **char** |  | [optional] 
**startDate** | **char** |  | [optional] 
**id** | **char \*** |  | [optional] 
**status** | **payconductor_api_getOrders_status_e** |  | [optional] 

### Return type

void

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OrderAPI_getOrdersById**
```c
// Get order by ID
//
// Retrieve the complete data of an order by our ID
//
void OrderAPI_getOrdersById(apiClient_t *apiClient, char *id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**id** | **char \*** |  | 

### Return type

void

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OrderAPI_postOrders**
```c
// Create order
//
// Create a new order for payment using the provided data
//
post_orders_200_response_t* OrderAPI_postOrders(apiClient_t *apiClient, post_orders_request_t *post_orders_request);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**post_orders_request** | **[post_orders_request_t](post_orders_request.md) \*** |  | 

### Return type

[post_orders_200_response_t](post_orders_200_response.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OrderAPI_postOrdersByIdRefund**
```c
// Refund order
//
// Initiate a refund for the order specified by ID.
//
void OrderAPI_postOrdersByIdRefund(apiClient_t *apiClient, char *id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**id** | **char \*** |  | 

### Return type

void

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

