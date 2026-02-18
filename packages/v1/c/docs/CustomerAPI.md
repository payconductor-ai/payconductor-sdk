# CustomerAPI

All URIs are relative to *https://app.payconductor.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CustomerAPI_deleteCustomersById**](CustomerAPI.md#CustomerAPI_deleteCustomersById) | **DELETE** /customers/{id} | 
[**CustomerAPI_getCustomers**](CustomerAPI.md#CustomerAPI_getCustomers) | **GET** /customers/ | 
[**CustomerAPI_getCustomersById**](CustomerAPI.md#CustomerAPI_getCustomersById) | **GET** /customers/{id} | 
[**CustomerAPI_patchCustomersById**](CustomerAPI.md#CustomerAPI_patchCustomersById) | **PATCH** /customers/{id} | 
[**CustomerAPI_postCustomers**](CustomerAPI.md#CustomerAPI_postCustomers) | **POST** /customers/ | 


# **CustomerAPI_deleteCustomersById**
```c
void CustomerAPI_deleteCustomersById(apiClient_t *apiClient, char *id);
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

# **CustomerAPI_getCustomers**
```c
void CustomerAPI_getCustomers(apiClient_t *apiClient, double page, double pageSize, payconductor_api_getCustomers_period_e period, char *email, char *name, char endDate, char startDate);
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

# **CustomerAPI_getCustomersById**
```c
void CustomerAPI_getCustomersById(apiClient_t *apiClient, char *id);
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

# **CustomerAPI_patchCustomersById**
```c
void CustomerAPI_patchCustomersById(apiClient_t *apiClient, char *id, customer_1_t *customer_1);
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

# **CustomerAPI_postCustomers**
```c
void CustomerAPI_postCustomers(apiClient_t *apiClient, customer_t *customer);
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

