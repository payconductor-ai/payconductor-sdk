# SaquesETransfernciasApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**getWithdraws**](#getwithdraws) | **GET** /withdraws/ | Lista os saques|
|[**getWithdrawsById**](#getwithdrawsbyid) | **GET** /withdraws/{id} | Buscar pelo ID|
|[**postWithdraws**](#postwithdraws) | **POST** /withdraws/ | Cria saque|

# **getWithdraws**
> getWithdraws()

Retorna uma lista paginada de saques e transferências. Permite filtrar por data de criação ou buscar por ID (ID do saque, ID externo, ID da adquirente ou End2EndID)

### Example

```typescript
import {
    SaquesETransfernciasApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new SaquesETransfernciasApi(configuration);

let period: 'Today' | 'Yesterday' | 'Last7Days' | 'Last30Days' | 'ThisMonth' | 'LastMonth' | 'ThisYear' | 'Custom'; // (default to 'Last7Days')
let page: number; // (default to 1)
let pageSize: number; // (default to 20)
let endDate: string; // (optional) (default to undefined)
let startDate: string; // (optional) (default to undefined)
let id: string; // (optional) (default to undefined)

const { status, data } = await apiInstance.getWithdraws(
    period,
    page,
    pageSize,
    endDate,
    startDate,
    id
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


### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWithdrawsById**
> getWithdrawsById()

Retorna os detalhes de um saque ou transferência específico usando seu ID

### Example

```typescript
import {
    SaquesETransfernciasApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new SaquesETransfernciasApi(configuration);

let id: string; // (default to undefined)

const { status, data } = await apiInstance.getWithdrawsById(
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

# **postWithdraws**
> PostWithdraws200Response postWithdraws(postWithdrawsRequest)

Realiza um novo saque ou transferência para a conta de pagamento informada

### Example

```typescript
import {
    SaquesETransfernciasApi,
    Configuration,
    PostWithdrawsRequest
} from './api';

const configuration = new Configuration();
const apiInstance = new SaquesETransfernciasApi(configuration);

let postWithdrawsRequest: PostWithdrawsRequest; //

const { status, data } = await apiInstance.postWithdraws(
    postWithdrawsRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **postWithdrawsRequest** | **PostWithdrawsRequest**|  | |


### Return type

**PostWithdraws200Response**

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

