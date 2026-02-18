# TransferApi

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
    TransferApi,
    Configuration
} from 'payconductor-sdk';

const configuration = new Configuration();
const apiInstance = new TransferApi(configuration);

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

Returns the details of a specific withdrawal or transfer using its ID

### Example

```typescript
import {
    TransferApi,
    Configuration
} from 'payconductor-sdk';

const configuration = new Configuration();
const apiInstance = new TransferApi(configuration);

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
    TransferApi,
    Configuration,
    PostWithdrawsRequest
} from 'payconductor-sdk';

const configuration = new Configuration();
const apiInstance = new TransferApi(configuration);

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

