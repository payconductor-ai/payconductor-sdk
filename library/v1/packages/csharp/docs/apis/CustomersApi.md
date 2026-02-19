# payconductor_sdk.Api.CustomersApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**GetCustomers**](CustomersApi.md#getcustomers) | **GET** /customers/ | Get all customers |
| [**GetCustomersById**](CustomersApi.md#getcustomersbyid) | **GET** /customers/{id} | Get customer by ID |
| [**PatchCustomersById**](CustomersApi.md#patchcustomersbyid) | **PATCH** /customers/{id} | Update customer data |
| [**PostCustomers**](CustomersApi.md#postcustomers) | **POST** /customers/ | Create new customer |

<a id="getcustomers"></a>
# **GetCustomers**
> void GetCustomers (decimal page, decimal pageSize, string email = null, string name = null, DateTime endDate = null, DateTime startDate = null)

Get all customers

Retrieve a list of all customers associated with the organization, with support for filters and pagination.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **page** | **decimal** |  | [default to 1M] |
| **pageSize** | **decimal** |  | [default to 20M] |
| **email** | **string** |  | [optional]  |
| **name** | **string** |  | [optional]  |
| **endDate** | **DateTime** |  | [optional]  |
| **startDate** | **DateTime** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getcustomersbyid"></a>
# **GetCustomersById**
> void GetCustomersById (string id)

Get customer by ID

Retrieve the complete details of a specific customer using their unique ID.


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

<a id="patchcustomersbyid"></a>
# **PatchCustomersById**
> void PatchCustomersById (string id, Customer1 customer1)

Update customer data

Update the information of an existing customer by providing the new data in the request body.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **string** |  |  |
| **customer1** | [**Customer1**](Customer1.md) | Schema for creating a new customer |  |

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined


[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="postcustomers"></a>
# **PostCustomers**
> void PostCustomers (Customer customer)

Create new customer

Create a new customer by providing the required data in the request body.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **customer** | [**Customer**](Customer.md) | Schema for creating a new customer |  |

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined


[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

