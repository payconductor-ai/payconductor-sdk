# openapi.api.CardTokenizationApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://app.payconductor.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postCardTokenization**](CardTokenizationApi.md#postcardtokenization) | **POST** /card-tokenization/ | Tokenize card


# **postCardTokenization**
> PostCardTokenization200Response postCardTokenization(postCardTokenizationRequest)

Tokenize card

Tokenize credit cards for future charges.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api = Openapi().getCardTokenizationApi();
final PostCardTokenizationRequest postCardTokenizationRequest = ; // PostCardTokenizationRequest | Data for creating a customer card

try {
    final response = api.postCardTokenization(postCardTokenizationRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CardTokenizationApi->postCardTokenization: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postCardTokenizationRequest** | [**PostCardTokenizationRequest**](PostCardTokenizationRequest.md)| Data for creating a customer card | 

### Return type

[**PostCardTokenization200Response**](PostCardTokenization200Response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

