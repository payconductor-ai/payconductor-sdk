# CustomersAPI

All URIs are relative to *https://app.payconductor.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CustomersAPI_getCustomers**](CustomersAPI.md#CustomersAPI_getCustomers) | **GET** /customers/ | Get all customers
[**CustomersAPI_getCustomersById**](CustomersAPI.md#CustomersAPI_getCustomersById) | **GET** /customers/{id} | Get customer by ID
[**CustomersAPI_patchCustomersById**](CustomersAPI.md#CustomersAPI_patchCustomersById) | **PATCH** /customers/{id} | Update customer data
[**CustomersAPI_postCustomers**](CustomersAPI.md#CustomersAPI_postCustomers) | **POST** /customers/ | Create new customer


# **CustomersAPI_getCustomers**
```c
// Get all customers
//
// Retrieve a list of all customers associated with the organization, with support for filters and pagination.
//
void CustomersAPI_getCustomers(apiClient_t *apiClient, double page, double pageSize, char *email, char *name, char endDate, char startDate);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**page** | **double** |  | [default to 1]
**pageSize** | **double** |  | [default to 20]
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
// Get customer by ID
//
// Retrieve the complete details of a specific customer using their unique ID.
//
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
// Update customer data
//
// Update the information of an existing customer by providing the new data in the request body.
//
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
// Create new customer
//
// Create a new customer by providing the required data in the request body.
//
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

