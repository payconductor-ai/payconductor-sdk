# Org.OpenAPITools.Api.PedidosApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**GetOrders**](PedidosApi.md#getorders) | **GET** /orders/ | Listar pedidos |
| [**GetOrdersById**](PedidosApi.md#getordersbyid) | **GET** /orders/{id} | Buscar pelo ID |
| [**PostOrders**](PedidosApi.md#postorders) | **POST** /orders/ | Criar pedido |
| [**PostOrdersByIdRefund**](PedidosApi.md#postordersbyidrefund) | **POST** /orders/{id}/refund | Reembolsar pedido |

<a id="getorders"></a>
# **GetOrders**
> void GetOrders (string period, decimal page, decimal pageSize, DateTime endDate = null, DateTime startDate = null, string id = null, string status = null)

Listar pedidos

Recupere uma lista de pedidos. Utilize os parâmetros de filtro de data e paginação para refinar os resultados conforme necessário.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **period** | **string** |  | [default to Last7Days] |
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

Buscar pelo ID

Localize os dados completos de um pedido buscando pelo nosso id


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

Criar pedido

Crie um novo pedido para pagamento utilizando os dados fornecidos


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

<a id="postordersbyidrefund"></a>
# **PostOrdersByIdRefund**
> void PostOrdersByIdRefund (string id)

Reembolsar pedido

Inicie um reembolso para o pedido especificado pelo ID.


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

