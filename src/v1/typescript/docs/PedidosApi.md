# PedidosApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**getOrders**](#getorders) | **GET** /orders/ | Listar pedidos|
|[**getOrdersById**](#getordersbyid) | **GET** /orders/{id} | Buscar pelo ID|
|[**postOrders**](#postorders) | **POST** /orders/ | Criar pedido|
|[**postOrdersByIdRefund**](#postordersbyidrefund) | **POST** /orders/{id}/refund | Reembolsar pedido|

# **getOrders**
> getOrders()

Recupere uma lista de pedidos. Utilize os parâmetros de filtro de data e paginação para refinar os resultados conforme necessário.

### Example

```typescript
import {
    PedidosApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new PedidosApi(configuration);

let period: 'Today' | 'Yesterday' | 'Last7Days' | 'Last30Days' | 'ThisMonth' | 'LastMonth' | 'ThisYear' | 'Custom'; // (default to 'Last7Days')
let page: number; // (default to 1)
let pageSize: number; // (default to 20)
let endDate: string; // (optional) (default to undefined)
let startDate: string; // (optional) (default to undefined)
let id: string; // (optional) (default to undefined)
let status: 'Generating' | 'Pending' | 'Completed' | 'Failed' | 'Canceled' | 'Refunding' | 'Refunded' | 'InDispute' | 'Chargeback'; // (optional) (default to undefined)

const { status, data } = await apiInstance.getOrders(
    period,
    page,
    pageSize,
    endDate,
    startDate,
    id,
    status
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **period** | [**&#39;Today&#39; | &#39;Yesterday&#39; | &#39;Last7Days&#39; | &#39;Last30Days&#39; | &#39;ThisMonth&#39; | &#39;LastMonth&#39; | &#39;ThisYear&#39; | &#39;Custom&#39;**]**Array<&#39;Today&#39; &#124; &#39;Yesterday&#39; &#124; &#39;Last7Days&#39; &#124; &#39;Last30Days&#39; &#124; &#39;ThisMonth&#39; &#124; &#39;LastMonth&#39; &#124; &#39;ThisYear&#39; &#124; &#39;Custom&#39;>** |  | defaults to 'Last7Days'|
| **page** | [**number**] |  | defaults to 1|
| **pageSize** | [**number**] |  | defaults to 20|
| **endDate** | [**string**] |  | (optional) defaults to undefined|
| **startDate** | [**string**] |  | (optional) defaults to undefined|
| **id** | [**string**] |  | (optional) defaults to undefined|
| **status** | [**&#39;Generating&#39; | &#39;Pending&#39; | &#39;Completed&#39; | &#39;Failed&#39; | &#39;Canceled&#39; | &#39;Refunding&#39; | &#39;Refunded&#39; | &#39;InDispute&#39; | &#39;Chargeback&#39;**]**Array<&#39;Generating&#39; &#124; &#39;Pending&#39; &#124; &#39;Completed&#39; &#124; &#39;Failed&#39; &#124; &#39;Canceled&#39; &#124; &#39;Refunding&#39; &#124; &#39;Refunded&#39; &#124; &#39;InDispute&#39; &#124; &#39;Chargeback&#39;>** |  | (optional) defaults to undefined|


### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrdersById**
> getOrdersById()

Localize os dados completos de um pedido buscando pelo nosso id

### Example

```typescript
import {
    PedidosApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new PedidosApi(configuration);

let id: string; // (default to undefined)

const { status, data } = await apiInstance.getOrdersById(
    id
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **id** | [**string**] |  | defaults to undefined|


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

Crie um novo pedido para pagamento utilizando os dados fornecidos

### Example

```typescript
import {
    PedidosApi,
    Configuration,
    PostOrdersRequest
} from './api';

const configuration = new Configuration();
const apiInstance = new PedidosApi(configuration);

let postOrdersRequest: PostOrdersRequest; //

const { status, data } = await apiInstance.postOrders(
    postOrdersRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **postOrdersRequest** | **PostOrdersRequest**|  | |


### Return type

**PostOrders200Response**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Response for status 200 |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postOrdersByIdRefund**
> postOrdersByIdRefund()

Inicie um reembolso para o pedido especificado pelo ID.

### Example

```typescript
import {
    PedidosApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new PedidosApi(configuration);

let id: string; // (default to undefined)

const { status, data } = await apiInstance.postOrdersByIdRefund(
    id
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **id** | [**string**] |  | defaults to undefined|


### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

