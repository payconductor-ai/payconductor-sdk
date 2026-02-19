# CustomersApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**getCustomers**](#getcustomers) | **GET** /customers/ | Get all customers|
|[**getCustomersById**](#getcustomersbyid) | **GET** /customers/{id} | Get customer by ID|
|[**patchCustomersById**](#patchcustomersbyid) | **PATCH** /customers/{id} | Update customer data|
|[**postCustomers**](#postcustomers) | **POST** /customers/ | Create new customer|

# **getCustomers**
> getCustomers()

Retrieve a list of all customers associated with the organization, with support for filters and pagination.

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
let email: string; // (optional) (default to undefined)
let name: string; // (optional) (default to undefined)
let endDate: string; // (optional) (default to undefined)
let startDate: string; // (optional) (default to undefined)

const { status, data } = await apiInstance.getCustomers(
    page,
    pageSize,
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

Retrieve the complete details of a specific customer using their unique ID.

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

Update the information of an existing customer by providing the new data in the request body.

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

Create a new customer by providing the required data in the request body.

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

