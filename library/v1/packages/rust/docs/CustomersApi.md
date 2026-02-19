# \CustomersApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_customers**](CustomersApi.md#get_customers) | **GET** /customers/ | Get all customers
[**get_customers_by_id**](CustomersApi.md#get_customers_by_id) | **GET** /customers/{id} | Get customer by ID
[**patch_customers_by_id**](CustomersApi.md#patch_customers_by_id) | **PATCH** /customers/{id} | Update customer data
[**post_customers**](CustomersApi.md#post_customers) | **POST** /customers/ | Create new customer



## get_customers

> get_customers(page, page_size, email, name, end_date, start_date)
Get all customers

Retrieve a list of all customers associated with the organization, with support for filters and pagination.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**page** | **f64** |  | [required] |[default to 1]
**page_size** | **f64** |  | [required] |[default to 20]
**email** | Option<**String**> |  |  |
**name** | Option<**String**> |  |  |
**end_date** | Option<**String**> |  |  |
**start_date** | Option<**String**> |  |  |

### Return type

 (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_customers_by_id

> get_customers_by_id(id)
Get customer by ID

Retrieve the complete details of a specific customer using their unique ID.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patch_customers_by_id

> patch_customers_by_id(id, customer1)
Update customer data

Update the information of an existing customer by providing the new data in the request body.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **String** |  | [required] |
**customer1** | [**Customer1**](Customer1.md) | Schema for creating a new customer | [required] |

### Return type

 (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## post_customers

> post_customers(customer)
Create new customer

Create a new customer by providing the required data in the request body.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**customer** | [**Customer**](Customer.md) | Schema for creating a new customer | [required] |

### Return type

 (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

