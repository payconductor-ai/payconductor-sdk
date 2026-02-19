# payconductor_sdk.Api.OrdersApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**GetOrders**](OrdersApi.md#getorders) | **GET** /orders/ | List orders |
| [**GetOrdersById**](OrdersApi.md#getordersbyid) | **GET** /orders/{id} | Get order by ID |
| [**PostOrders**](OrdersApi.md#postorders) | **POST** /orders/ | Create order |
| [**PostOrdersByIdConfirm**](OrdersApi.md#postordersbyidconfirm) | **POST** /orders/{id}/confirm | Confirm order |
| [**PostOrdersByIdRefund**](OrdersApi.md#postordersbyidrefund) | **POST** /orders/{id}/refund | Refund order |

<a id="getorders"></a>
# **GetOrders**
> void GetOrders (decimal page, decimal pageSize, DateTime endDate = null, DateTime startDate = null, string id = null, string status = null)

List orders

Retrieve a list of orders. Use date filter and pagination parameters to refine results as needed.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **page** | **decimal** |  | [default to 1M] |
| **pageSize** | **decimal** |  | [default to 20M] |
| **endDate** | **DateTime** |  | [optional]  |
| **startDate** | **DateTime** |  | [optional]  |
| **id** | **string** |  | [optional]  |
| **status** | **string** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getordersbyid"></a>
# **GetOrdersById**
> void GetOrdersById (string id)

Get order by ID

Retrieve the complete data of an order by our ID


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **string** |  |  |

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="postorders"></a>
# **PostOrders**
> PostOrders200Response PostOrders (PostOrdersRequest postOrdersRequest)

Create order

Create a new order for payment using the provided data


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **postOrdersRequest** | [**PostOrdersRequest**](PostOrdersRequest.md) |  |  |

### Return type

[**PostOrders200Response**](PostOrders200Response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Response for status 200 |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="postordersbyidconfirm"></a>
# **PostOrdersByIdConfirm**
> PostOrdersByIdConfirm200Response PostOrdersByIdConfirm (string id, PostOrdersRequestPayment postOrdersRequestPayment)

Confirm order

Confirms a Draft order, setting the payment method and processing the charges associated with the order.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **string** |  |  |
| **postOrdersRequestPayment** | [**PostOrdersRequestPayment**](PostOrdersRequestPayment.md) | Payment data for the order (Pix, Credit Card, Bank Slip, NuPay, etc...) |  |

### Return type

[**PostOrdersByIdConfirm200Response**](PostOrdersByIdConfirm200Response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Response for status 200 |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="postordersbyidrefund"></a>
# **PostOrdersByIdRefund**
> void PostOrdersByIdRefund (string id)

Refund order

Initiate a refund for the order specified by ID.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **string** |  |  |

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

