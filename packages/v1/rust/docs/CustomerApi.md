# \CustomerApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_customers_by_id**](CustomerApi.md#delete_customers_by_id) | **DELETE** /customers/{id} | 
[**get_customers**](CustomerApi.md#get_customers) | **GET** /customers/ | 
[**get_customers_by_id**](CustomerApi.md#get_customers_by_id) | **GET** /customers/{id} | 
[**patch_customers_by_id**](CustomerApi.md#patch_customers_by_id) | **PATCH** /customers/{id} | 
[**post_customers**](CustomerApi.md#post_customers) | **POST** /customers/ | 



## delete_customers_by_id

> delete_customers_by_id(id)


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


## get_customers

> get_customers(page, page_size, period, email, name, end_date, start_date)


### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**page** | **f64** |  | [required] |[default to 1]
**page_size** | **f64** |  | [required] |[default to 20]
**period** | **String** |  | [required] |[default to Last7Days]
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

