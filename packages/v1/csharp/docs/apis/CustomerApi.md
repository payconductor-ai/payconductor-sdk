# payconductor-sdk.Api.CustomerApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**DeleteCustomersById**](CustomerApi.md#deletecustomersbyid) | **DELETE** /customers/{id} |  |
| [**GetCustomers**](CustomerApi.md#getcustomers) | **GET** /customers/ |  |
| [**GetCustomersById**](CustomerApi.md#getcustomersbyid) | **GET** /customers/{id} |  |
| [**PatchCustomersById**](CustomerApi.md#patchcustomersbyid) | **PATCH** /customers/{id} |  |
| [**PostCustomers**](CustomerApi.md#postcustomers) | **POST** /customers/ |  |

<a id="deletecustomersbyid"></a>
# **DeleteCustomersById**
> void DeleteCustomersById (string id)




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

<a id="getcustomers"></a>
# **GetCustomers**
> void GetCustomers (decimal page, decimal pageSize, string period, string email = null, string name = null, DateTime endDate = null, DateTime startDate = null)




### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **page** | **decimal** |  | [default to 1M] |
| **pageSize** | **decimal** |  | [default to 20M] |
| **period** | **string** |  | [default to Last7Days] |
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

