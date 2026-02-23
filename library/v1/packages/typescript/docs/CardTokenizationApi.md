# CardTokenizationApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**cardTokenize**](#cardtokenize) | **POST** /card-tokenization/ | Tokenize Card|

# **cardTokenize**
> CardTokenizationCreateResponse cardTokenize(cardTokenizationCreateRequest)

Tokenize credit cards for future charges.

### Example

```typescript
import {
    CardTokenizationApi,
    Configuration,
    CardTokenizationCreateRequest
} from '@payconductor/sdk';

const configuration = new Configuration();
const apiInstance = new CardTokenizationApi(configuration);

let cardTokenizationCreateRequest: CardTokenizationCreateRequest; //Data for creating a customer card with customer information

const { status, data } = await apiInstance.cardTokenize(
    cardTokenizationCreateRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **cardTokenizationCreateRequest** | **CardTokenizationCreateRequest**| Data for creating a customer card with customer information | |


### Return type

**CardTokenizationCreateResponse**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Response containing customer ID and card token |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

