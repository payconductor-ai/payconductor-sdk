# CustomerApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**customerCreate**](#customercreate) | **POST** /customers/ | Create New Customer|
|[**customerListCustom**](#customerlistcustom) | **GET** /customers/ | Get All Customers|
|[**customerRead**](#customerread) | **GET** /customers/{id} | Get Customer By ID|
|[**customerUpdate**](#customerupdate) | **PATCH** /customers/{id} | Update Customer Data|

# **customerCreate**
> CustomerReadResponse customerCreate(customerCreateRequest)

Create a new customer by providing the required data in the request body.

### Example

```typescript
import {
    CustomerApi,
    Configuration,
    CustomerCreateRequest
} from '@payconductor/sdk';

const configuration = new Configuration();
const apiInstance = new CustomerApi(configuration);

let customerCreateRequest: CustomerCreateRequest; //Schema for creating a new customer

const { status, data } = await apiInstance.customerCreate(
    customerCreateRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **customerCreateRequest** | **CustomerCreateRequest**| Schema for creating a new customer | |


### Return type

**CustomerReadResponse**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Customer response with complete information |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerListCustom**
> CustomerListResponse customerListCustom()

Retrieve a list of all customers associated with the organization, with support for filters and pagination.

### Example

```typescript
import {
    CustomerApi,
    Configuration
} from '@payconductor/sdk';

const configuration = new Configuration();
const apiInstance = new CustomerApi(configuration);

let page: number; // (default to 1)
let pageSize: number; // (default to 20)
let email: string; // (optional) (default to undefined)
let name: string; // (optional) (default to undefined)
let endDate: string; // (optional) (default to undefined)
let startDate: string; // (optional) (default to undefined)

const { status, data } = await apiInstance.customerListCustom(
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

**CustomerListResponse**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Paginated list of customers |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerRead**
> CustomerReadResponse customerRead()

Retrieve the complete details of a specific customer using their unique ID.

### Example

```typescript
import {
    CustomerApi,
    Configuration
} from '@payconductor/sdk';

const configuration = new Configuration();
const apiInstance = new CustomerApi(configuration);

let id: string; // (default to undefined)

const { status, data } = await apiInstance.customerRead(
    id
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **id** | [**string**] |  | defaults to undefined|


### Return type

**CustomerReadResponse**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Customer response with complete information |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerUpdate**
> CustomerReadResponse customerUpdate(customerUpdateRequest)

Update the information of an existing customer by providing the new data in the request body.

### Example

```typescript
import {
    CustomerApi,
    Configuration,
    CustomerUpdateRequest
} from '@payconductor/sdk';

const configuration = new Configuration();
const apiInstance = new CustomerApi(configuration);

let id: string; // (default to undefined)
let customerUpdateRequest: CustomerUpdateRequest; //Schema for updating customer information

const { status, data } = await apiInstance.customerUpdate(
    id,
    customerUpdateRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **customerUpdateRequest** | **CustomerUpdateRequest**| Schema for updating customer information | |
| **id** | [**string**] |  | defaults to undefined|


### Return type

**CustomerReadResponse**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Customer response with complete information |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

