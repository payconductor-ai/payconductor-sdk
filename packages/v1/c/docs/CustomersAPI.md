# CustomersAPI

All URIs are relative to *https://app.payconductor.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CustomersAPI_deleteCustomersById**](CustomersAPI.md#CustomersAPI_deleteCustomersById) | **DELETE** /customers/{id} | 
[**CustomersAPI_getCustomers**](CustomersAPI.md#CustomersAPI_getCustomers) | **GET** /customers/ | 
[**CustomersAPI_getCustomersById**](CustomersAPI.md#CustomersAPI_getCustomersById) | **GET** /customers/{id} | 
[**CustomersAPI_patchCustomersById**](CustomersAPI.md#CustomersAPI_patchCustomersById) | **PATCH** /customers/{id} | 
[**CustomersAPI_postCustomers**](CustomersAPI.md#CustomersAPI_postCustomers) | **POST** /customers/ | 


# **CustomersAPI_deleteCustomersById**
```c
void CustomersAPI_deleteCustomersById(apiClient_t *apiClient, char *id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**id** | **char \*** |  | 

### Return type

void

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CustomersAPI_getCustomers**
```c
void CustomersAPI_getCustomers(apiClient_t *apiClient, double page, double pageSize, payconductor_api_getCustomers_period_e period, char *email, char *name, char endDate, char startDate);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**page** | **double** |  | [default to 1]
**pageSize** | **double** |  | [default to 20]
**period** | **payconductor_api_getCustomers_period_e** |  | [default to &#39;Last7Days&#39;]
**email** | **char \*** |  | [optional] 
**name** | **char \*** |  | [optional] 
**endDate** | **char** |  | [optional] 
**startDate** | **char** |  | [optional] 

### Return type

void

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CustomersAPI_getCustomersById**
```c
void CustomersAPI_getCustomersById(apiClient_t *apiClient, char *id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**id** | **char \*** |  | 

### Return type

void

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CustomersAPI_patchCustomersById**
```c
void CustomersAPI_patchCustomersById(apiClient_t *apiClient, char *id, customer_1_t *customer_1);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**id** | **char \*** |  | 
**customer_1** | **[customer_1_t](customer_1.md) \*** | Schema for creating a new customer | 

### Return type

void

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CustomersAPI_postCustomers**
```c
void CustomersAPI_postCustomers(apiClient_t *apiClient, customer_t *customer);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**customer** | **[customer_t](customer.md) \*** | Schema for creating a new customer | 

### Return type

void

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

