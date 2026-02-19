# TransfersApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**getWithdraws**](#getwithdraws) | **GET** /withdraws/ | List withdrawals|
|[**getWithdrawsById**](#getwithdrawsbyid) | **GET** /withdraws/{id} | Get withdrawal by ID|
|[**postWithdraws**](#postwithdraws) | **POST** /withdraws/ | Create withdrawal|

# **getWithdraws**
> getWithdraws()

Returns a paginated list of withdrawals and transfers. Filter by creation date or search by ID (withdrawal ID, external ID, acquirer ID, or End2EndID)

### Example

```typescript
import {
    TransfersApi,
    Configuration
} from 'payconductor-sdk';

const configuration = new Configuration();
const apiInstance = new TransfersApi(configuration);

let page: number; // (default to 1)
let pageSize: number; // (default to 20)
let endDate: string; // (optional) (default to undefined)
let startDate: string; // (optional) (default to undefined)
let id: string; // (optional) (default to undefined)

const { status, data } = await apiInstance.getWithdraws(
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

Returns the details of a specific withdrawal or transfer using its ID

### Example

```typescript
import {
    TransfersApi,
    Configuration
} from 'payconductor-sdk';

const configuration = new Configuration();
const apiInstance = new TransfersApi(configuration);

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

Create a new withdrawal or transfer to the provided payment account

### Example

```typescript
import {
    TransfersApi,
    Configuration,
    PostWithdrawsRequest
} from 'payconductor-sdk';

const configuration = new Configuration();
const apiInstance = new TransfersApi(configuration);

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

