# TransfersAPI

All URIs are relative to *https://app.payconductor.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**TransfersAPI_getWithdraws**](TransfersAPI.md#TransfersAPI_getWithdraws) | **GET** /withdraws/ | List withdrawals
[**TransfersAPI_getWithdrawsById**](TransfersAPI.md#TransfersAPI_getWithdrawsById) | **GET** /withdraws/{id} | Get withdrawal by ID
[**TransfersAPI_postWithdraws**](TransfersAPI.md#TransfersAPI_postWithdraws) | **POST** /withdraws/ | Create withdrawal


# **TransfersAPI_getWithdraws**
```c
// List withdrawals
//
// Returns a paginated list of withdrawals and transfers. Filter by creation date or search by ID (withdrawal ID, external ID, acquirer ID, or End2EndID)
//
void TransfersAPI_getWithdraws(apiClient_t *apiClient, double page, double pageSize, char endDate, char startDate, char *id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
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

# **TransfersAPI_getWithdrawsById**
```c
// Get withdrawal by ID
//
// Returns the details of a specific withdrawal or transfer using its ID
//
void TransfersAPI_getWithdrawsById(apiClient_t *apiClient, char *id);
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

# **TransfersAPI_postWithdraws**
```c
// Create withdrawal
//
// Create a new withdrawal or transfer to the provided payment account
//
post_withdraws_200_response_t* TransfersAPI_postWithdraws(apiClient_t *apiClient, post_withdraws_request_t *post_withdraws_request);
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

