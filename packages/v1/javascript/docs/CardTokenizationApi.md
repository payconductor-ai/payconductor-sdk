# PayconductorSdk.CardTokenizationApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postCardTokenization**](CardTokenizationApi.md#postCardTokenization) | **POST** /card-tokenization/ | Tokenize card



## postCardTokenization

> PostCardTokenization200Response postCardTokenization(postCardTokenizationRequest)

Tokenize card

Tokenize credit cards for future charges.

### Example

```javascript
import PayconductorSdk from 'payconductor-sdk';
let defaultClient = PayconductorSdk.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new PayconductorSdk.CardTokenizationApi();
let postCardTokenizationRequest = new PayconductorSdk.PostCardTokenizationRequest(); // PostCardTokenizationRequest | Data for creating a customer card
apiInstance.postCardTokenization(postCardTokenizationRequest, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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

