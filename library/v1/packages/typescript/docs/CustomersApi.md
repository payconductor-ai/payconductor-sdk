# CustomersApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**getCustomers**](#getcustomers) | **GET** /customers/ | Get all customers|
|[**getCustomersById**](#getcustomersbyid) | **GET** /customers/{id} | Get customer by ID|
|[**patchCustomersById**](#patchcustomersbyid) | **PATCH** /customers/{id} | Update customer data|
|[**postCustomers**](#postcustomers) | **POST** /customers/ | Create new customer|

# **getCustomers**
> CustomerListResponse getCustomers()

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

# **getCustomersById**
> CustomerResponse getCustomersById()

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

**CustomerResponse**

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

# **patchCustomersById**
> CustomerResponse patchCustomersById(updateCustomer)

Update the information of an existing customer by providing the new data in the request body.

### Example

```typescript
import {
    CustomersApi,
    Configuration,
    UpdateCustomer
} from 'payconductor-sdk';

const configuration = new Configuration();
const apiInstance = new CustomersApi(configuration);

let id: string; // (default to undefined)
let updateCustomer: UpdateCustomer; //Schema for updating customer information

const { status, data } = await apiInstance.patchCustomersById(
    id,
    updateCustomer
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **updateCustomer** | **UpdateCustomer**| Schema for updating customer information | |
| **id** | [**string**] |  | defaults to undefined|


### Return type

**CustomerResponse**

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

# **postCustomers**
> CustomerResponse postCustomers(customer1)

Create a new customer by providing the required data in the request body.

### Example

```typescript
import {
    CustomersApi,
    Configuration,
    Customer1
} from 'payconductor-sdk';

const configuration = new Configuration();
const apiInstance = new CustomersApi(configuration);

let customer1: Customer1; //Schema for creating a new customer

const { status, data } = await apiInstance.postCustomers(
    customer1
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **customer1** | **Customer1**| Schema for creating a new customer | |


### Return type

**CustomerResponse**

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

