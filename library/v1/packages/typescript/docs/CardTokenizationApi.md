# CardTokenizationApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**postCardTokenization**](#postcardtokenization) | **POST** /card-tokenization/ | Tokenize card|

# **postCardTokenization**
> PostCardTokenization200Response postCardTokenization(postCardTokenizationRequest)

Tokenize credit cards for future charges.

### Example

```typescript
import {
    CardTokenizationApi,
    Configuration,
    PostCardTokenizationRequest
} from 'payconductor-sdk';

const configuration = new Configuration();
const apiInstance = new CardTokenizationApi(configuration);

let postCardTokenizationRequest: PostCardTokenizationRequest; //Data for creating a customer card

const { status, data } = await apiInstance.postCardTokenization(
    postCardTokenizationRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **postCardTokenizationRequest** | **PostCardTokenizationRequest**| Data for creating a customer card | |


### Return type

**PostCardTokenization200Response**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Response for status 200 |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

