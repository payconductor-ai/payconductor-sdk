# \WithdrawalsAndTransfersApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_withdraws**](WithdrawalsAndTransfersApi.md#get_withdraws) | **GET** /withdraws/ | List withdrawals
[**get_withdraws_by_id**](WithdrawalsAndTransfersApi.md#get_withdraws_by_id) | **GET** /withdraws/{id} | Get withdrawal by ID
[**post_withdraws**](WithdrawalsAndTransfersApi.md#post_withdraws) | **POST** /withdraws/ | Create withdrawal



## get_withdraws

> get_withdraws(period, page, page_size, end_date, start_date, id)
List withdrawals

Returns a paginated list of withdrawals and transfers. Filter by creation date or search by ID (withdrawal ID, external ID, acquirer ID, or End2EndID)

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**period** | **String** |  | [required] |[default to Last7Days]
**page** | **f64** |  | [required] |[default to 1]
**page_size** | **f64** |  | [required] |[default to 20]
**end_date** | Option<**String**> |  |  |
**start_date** | Option<**String**> |  |  |
**id** | Option<**String**> |  |  |

### Return type

 (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_withdraws_by_id

> get_withdraws_by_id(id)
Get withdrawal by ID

Returns the details of a specific withdrawal or transfer using its ID

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


## post_withdraws

> models::PostWithdraws200Response post_withdraws(post_withdraws_request)
Create withdrawal

Create a new withdrawal or transfer to the provided payment account

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**post_withdraws_request** | [**PostWithdrawsRequest**](PostWithdrawsRequest.md) |  | [required] |

### Return type

[**models::PostWithdraws200Response**](postWithdraws_200_response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

