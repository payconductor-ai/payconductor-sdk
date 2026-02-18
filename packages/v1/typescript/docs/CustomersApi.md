# CustomersApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**deleteCustomersById**](#deletecustomersbyid) | **DELETE** /customers/{id} | |
|[**getCustomers**](#getcustomers) | **GET** /customers/ | |
|[**getCustomersById**](#getcustomersbyid) | **GET** /customers/{id} | |
|[**patchCustomersById**](#patchcustomersbyid) | **PATCH** /customers/{id} | |
|[**postCustomers**](#postcustomers) | **POST** /customers/ | |

# **deleteCustomersById**
> deleteCustomersById()


### Example

```typescript
import {
    CustomersApi,
    Configuration
} from 'payconductor-sdk';

const configuration = new Configuration();
const apiInstance = new CustomersApi(configuration);

let id: string; // (default to undefined)

const { status, data } = await apiInstance.deleteCustomersById(
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

# **getCustomers**
> getCustomers()


### Example

```typescript
import {
    CustomersApi,
    Configuration
} from 'payconductor-sdk';

const configuration = new Configuration();
const apiInstance = new CustomersApi(configuration);

let page: number; // (default to 1)
let pageSize: number; // (default to 20)
let period: 'Today' | 'Yesterday' | 'Last7Days' | 'Last30Days' | 'ThisMonth' | 'LastMonth' | 'ThisYear' | 'Custom'; // (default to 'Last7Days')
let email: string; // (optional) (default to undefined)
let name: string; // (optional) (default to undefined)
let endDate: string; // (optional) (default to undefined)
let startDate: string; // (optional) (default to undefined)

const { status, data } = await apiInstance.getCustomers(
    page,
    pageSize,
    period,
    email,
    name,
    endDate,
    startDate
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **page** | [**number**] |  | defaults to 1|
| **pageSize** | [**number**] |  | defaults to 20|
| **period** | [**&#39;Today&#39; | &#39;Yesterday&#39; | &#39;Last7Days&#39; | &#39;Last30Days&#39; | &#39;ThisMonth&#39; | &#39;LastMonth&#39; | &#39;ThisYear&#39; | &#39;Custom&#39;**]**Array<&#39;Today&#39; &#124; &#39;Yesterday&#39; &#124; &#39;Last7Days&#39; &#124; &#39;Last30Days&#39; &#124; &#39;ThisMonth&#39; &#124; &#39;LastMonth&#39; &#124; &#39;ThisYear&#39; &#124; &#39;Custom&#39;>** |  | defaults to 'Last7Days'|
| **email** | [**string**] |  | (optional) defaults to undefined|
| **name** | [**string**] |  | (optional) defaults to undefined|
| **endDate** | [**string**] |  | (optional) defaults to undefined|
| **startDate** | [**string**] |  | (optional) defaults to undefined|


### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomersById**
> getCustomersById()


### Example

```typescript
import {
    CustomersApi,
    Configuration
} from 'payconductor-sdk';

const configuration = new Configuration();
const apiInstance = new CustomersApi(configuration);

let id: string; // (default to undefined)

const { status, data } = await apiInstance.getCustomersById(
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

# **patchCustomersById**
> patchCustomersById(customer1)


### Example

```typescript
import {
    CustomersApi,
    Configuration,
    Customer1
} from 'payconductor-sdk';

const configuration = new Configuration();
const apiInstance = new CustomersApi(configuration);

let id: string; // (default to undefined)
let customer1: Customer1; //Schema for creating a new customer

const { status, data } = await apiInstance.patchCustomersById(
    id,
    customer1
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **customer1** | **Customer1**| Schema for creating a new customer | |
| **id** | [**string**] |  | defaults to undefined|


### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined


[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postCustomers**
> postCustomers(customer)


### Example

```typescript
import {
    CustomersApi,
    Configuration,
    Customer
} from 'payconductor-sdk';

const configuration = new Configuration();
const apiInstance = new CustomersApi(configuration);

let customer: Customer; //Schema for creating a new customer

const { status, data } = await apiInstance.postCustomers(
    customer
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **customer** | **Customer**| Schema for creating a new customer | |


### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined


[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

