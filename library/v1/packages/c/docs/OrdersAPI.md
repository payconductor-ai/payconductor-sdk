# OrdersAPI

All URIs are relative to *https://app.payconductor.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**OrdersAPI_getOrders**](OrdersAPI.md#OrdersAPI_getOrders) | **GET** /orders/ | List orders
[**OrdersAPI_getOrdersById**](OrdersAPI.md#OrdersAPI_getOrdersById) | **GET** /orders/{id} | Get order by ID
[**OrdersAPI_postOrders**](OrdersAPI.md#OrdersAPI_postOrders) | **POST** /orders/ | Create order
[**OrdersAPI_postOrdersByIdConfirm**](OrdersAPI.md#OrdersAPI_postOrdersByIdConfirm) | **POST** /orders/{id}/confirm | Confirm order
[**OrdersAPI_postOrdersByIdRefund**](OrdersAPI.md#OrdersAPI_postOrdersByIdRefund) | **POST** /orders/{id}/refund | Refund order


# **OrdersAPI_getOrders**
```c
// List orders
//
// Retrieve a list of orders. Use date filter and pagination parameters to refine results as needed.
//
void OrdersAPI_getOrders(apiClient_t *apiClient, double page, double pageSize, char endDate, char startDate, char *id, payconductor_api_getOrders_status_e status);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
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

# **OrdersAPI_getOrdersById**
```c
// Get order by ID
//
// Retrieve the complete data of an order by our ID
//
void OrdersAPI_getOrdersById(apiClient_t *apiClient, char *id);
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

# **OrdersAPI_postOrders**
```c
// Create order
//
// Create a new order for payment using the provided data
//
post_orders_200_response_t* OrdersAPI_postOrders(apiClient_t *apiClient, post_orders_request_t *post_orders_request);
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

# **OrdersAPI_postOrdersByIdConfirm**
```c
// Confirm order
//
// Confirms a Draft order, setting the payment method and processing the charges associated with the order.
//
post_orders_by_id_confirm_200_response_t* OrdersAPI_postOrdersByIdConfirm(apiClient_t *apiClient, char *id, post_orders_request_payment_t *post_orders_request_payment);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**id** | **char \*** |  | 
**post_orders_request_payment** | **[post_orders_request_payment_t](post_orders_request_payment.md) \*** | Payment data for the order (Pix, Credit Card, Bank Slip, NuPay, etc...) | 

### Return type

[post_orders_by_id_confirm_200_response_t](post_orders_by_id_confirm_200_response.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OrdersAPI_postOrdersByIdRefund**
```c
// Refund order
//
// Initiate a refund for the order specified by ID.
//
void OrdersAPI_postOrdersByIdRefund(apiClient_t *apiClient, char *id);
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

