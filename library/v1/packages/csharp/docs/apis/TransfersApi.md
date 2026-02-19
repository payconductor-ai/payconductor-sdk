# payconductor_sdk.Api.TransfersApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**GetWithdraws**](TransfersApi.md#getwithdraws) | **GET** /withdraws/ | List withdrawals |
| [**GetWithdrawsById**](TransfersApi.md#getwithdrawsbyid) | **GET** /withdraws/{id} | Get withdrawal by ID |
| [**PostWithdraws**](TransfersApi.md#postwithdraws) | **POST** /withdraws/ | Create withdrawal |

<a id="getwithdraws"></a>
# **GetWithdraws**
> void GetWithdraws (decimal page, decimal pageSize, DateTime endDate = null, DateTime startDate = null, string id = null)

List withdrawals

Returns a paginated list of withdrawals and transfers. Filter by creation date or search by ID (withdrawal ID, external ID, acquirer ID, or End2EndID)


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **page** | **decimal** |  | [default to 1M] |
| **pageSize** | **decimal** |  | [default to 20M] |
| **endDate** | **DateTime** |  | [optional]  |
| **startDate** | **DateTime** |  | [optional]  |
| **id** | **string** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getwithdrawsbyid"></a>
# **GetWithdrawsById**
> void GetWithdrawsById (string id)

Get withdrawal by ID

Returns the details of a specific withdrawal or transfer using its ID


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

<a id="postwithdraws"></a>
# **PostWithdraws**
> PostWithdraws200Response PostWithdraws (PostWithdrawsRequest postWithdrawsRequest)

Create withdrawal

Create a new withdrawal or transfer to the provided payment account


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **postWithdrawsRequest** | [**PostWithdrawsRequest**](PostWithdrawsRequest.md) |  |  |

### Return type

[**PostWithdraws200Response**](PostWithdraws200Response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Response for status 200 |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

