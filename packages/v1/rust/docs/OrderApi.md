# \OrderApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_orders**](OrderApi.md#get_orders) | **GET** /orders/ | List orders
[**get_orders_by_id**](OrderApi.md#get_orders_by_id) | **GET** /orders/{id} | Get order by ID
[**post_orders**](OrderApi.md#post_orders) | **POST** /orders/ | Create order
[**post_orders_by_id_refund**](OrderApi.md#post_orders_by_id_refund) | **POST** /orders/{id}/refund | Refund order



## get_orders

> get_orders(period, page, page_size, end_date, start_date, id, status)
List orders

Retrieve a list of orders. Use date filter and pagination parameters to refine results as needed.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**period** | **String** |  | [required] |[default to Last7Days]
**page** | **f64** |  | [required] |[default to 1]
**page_size** | **f64** |  | [required] |[default to 20]
**end_date** | Option<**String**> |  |  |
**start_date** | Option<**String**> |  |  |
**id** | Option<**String**> |  |  |
**status** | Option<**String**> |  |  |

### Return type

 (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_orders_by_id

> get_orders_by_id(id)
Get order by ID

Retrieve the complete data of an order by our ID

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## post_orders

> models::PostOrders200Response post_orders(post_orders_request)
Create order

Create a new order for payment using the provided data

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**post_orders_request** | [**PostOrdersRequest**](PostOrdersRequest.md) |  | [required] |

### Return type

[**models::PostOrders200Response**](postOrders_200_response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## post_orders_by_id_refund

> post_orders_by_id_refund(id)
Refund order

Initiate a refund for the order specified by ID.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

