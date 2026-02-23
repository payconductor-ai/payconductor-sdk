# WithdrawApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**withdrawCreate**](#withdrawcreate) | **POST** /withdraws/ | Create Withdrawal|
|[**withdrawList**](#withdrawlist) | **GET** /withdraws/ | List Withdrawals|
|[**withdrawRead**](#withdrawread) | **GET** /withdraws/{id} | Get Withdrawal By ID|

# **withdrawCreate**
> WithdrawCreateResponse withdrawCreate(withdrawCreateRequest)

Create a new withdrawal or transfer to the provided payment account

### Example

```typescript
import {
    WithdrawApi,
    Configuration,
    WithdrawCreateRequest
} from '@payconductor/sdk';

const configuration = new Configuration();
const apiInstance = new WithdrawApi(configuration);

let withdrawCreateRequest: WithdrawCreateRequest; //Withdrawal or transfer request data

const { status, data } = await apiInstance.withdrawCreate(
    withdrawCreateRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **withdrawCreateRequest** | **WithdrawCreateRequest**| Withdrawal or transfer request data | |


### Return type

**WithdrawCreateResponse**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Response after creating a withdrawal or transfer |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **withdrawList**
> withdrawList()

Returns a paginated list of withdrawals and transfers. Filter by creation date or search by ID (withdrawal ID, external ID, acquirer ID, or End2EndID)

### Example

```typescript
import {
    WithdrawApi,
    Configuration
} from '@payconductor/sdk';

const configuration = new Configuration();
const apiInstance = new WithdrawApi(configuration);

let page: number; // (default to 1)
let pageSize: number; // (default to 20)
let endDate: string; // (optional) (default to undefined)
let startDate: string; // (optional) (default to undefined)
let id: string; // (optional) (default to undefined)

const { status, data } = await apiInstance.withdrawList(
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

# **withdrawRead**
> withdrawRead()

Returns the details of a specific withdrawal or transfer using its ID

### Example

```typescript
import {
    WithdrawApi,
    Configuration
} from '@payconductor/sdk';

const configuration = new Configuration();
const apiInstance = new WithdrawApi(configuration);

let id: string; // (default to undefined)

const { status, data } = await apiInstance.withdrawRead(
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

