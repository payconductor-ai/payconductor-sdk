# TransferAPI

All URIs are relative to *https://app.payconductor.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**TransferAPI_getWithdraws**](TransferAPI.md#TransferAPI_getWithdraws) | **GET** /withdraws/ | List withdrawals
[**TransferAPI_getWithdrawsById**](TransferAPI.md#TransferAPI_getWithdrawsById) | **GET** /withdraws/{id} | Get withdrawal by ID
[**TransferAPI_postWithdraws**](TransferAPI.md#TransferAPI_postWithdraws) | **POST** /withdraws/ | Create withdrawal


# **TransferAPI_getWithdraws**
```c
// List withdrawals
//
// Returns a paginated list of withdrawals and transfers. Filter by creation date or search by ID (withdrawal ID, external ID, acquirer ID, or End2EndID)
//
void TransferAPI_getWithdraws(apiClient_t *apiClient, payconductor_api_getWithdraws_period_e period, double page, double pageSize, char endDate, char startDate, char *id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**period** | **payconductor_api_getWithdraws_period_e** |  | [default to &#39;Last7Days&#39;]
**page** | **double** |  | [default to 1]
**pageSize** | **double** |  | [default to 20]
**endDate** | **char** |  | [optional] 
**startDate** | **char** |  | [optional] 
**id** | **char \*** |  | [optional] 

### Return type

void

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **TransferAPI_getWithdrawsById**
```c
// Get withdrawal by ID
//
// Returns the details of a specific withdrawal or transfer using its ID
//
void TransferAPI_getWithdrawsById(apiClient_t *apiClient, char *id);
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

# **TransferAPI_postWithdraws**
```c
// Create withdrawal
//
// Create a new withdrawal or transfer to the provided payment account
//
post_withdraws_200_response_t* TransferAPI_postWithdraws(apiClient_t *apiClient, post_withdraws_request_t *post_withdraws_request);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**post_withdraws_request** | **[post_withdraws_request_t](post_withdraws_request.md) \*** |  | 

### Return type

[post_withdraws_200_response_t](post_withdraws_200_response.md) *


### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

