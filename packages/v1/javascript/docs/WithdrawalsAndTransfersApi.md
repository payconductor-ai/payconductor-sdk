# PayconductorSdk.WithdrawalsAndTransfersApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getWithdraws**](WithdrawalsAndTransfersApi.md#getWithdraws) | **GET** /withdraws/ | List withdrawals
[**getWithdrawsById**](WithdrawalsAndTransfersApi.md#getWithdrawsById) | **GET** /withdraws/{id} | Get withdrawal by ID
[**postWithdraws**](WithdrawalsAndTransfersApi.md#postWithdraws) | **POST** /withdraws/ | Create withdrawal



## getWithdraws

> getWithdraws(period, page, pageSize, opts)

List withdrawals

Returns a paginated list of withdrawals and transfers. Filter by creation date or search by ID (withdrawal ID, external ID, acquirer ID, or End2EndID)

### Example

```javascript
import PayconductorSdk from 'payconductor-sdk';
let defaultClient = PayconductorSdk.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new PayconductorSdk.WithdrawalsAndTransfersApi();
let period = "'Last7Days'"; // String | 
let page = 1; // Number | 
let pageSize = 20; // Number | 
let opts = {
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'id': "id_example" // String | 
};
apiInstance.getWithdraws(period, page, pageSize, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **period** | **String**|  | [default to &#39;Last7Days&#39;]
 **page** | **Number**|  | [default to 1]
 **pageSize** | **Number**|  | [default to 20]
 **endDate** | **Date**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **id** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## getWithdrawsById

> getWithdrawsById(id)

Get withdrawal by ID

Returns the details of a specific withdrawal or transfer using its ID

### Example

```javascript
import PayconductorSdk from 'payconductor-sdk';
let defaultClient = PayconductorSdk.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new PayconductorSdk.WithdrawalsAndTransfersApi();
let id = "id_example"; // String | 
apiInstance.getWithdrawsById(id, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

null (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## postWithdraws

> PostWithdraws200Response postWithdraws(postWithdrawsRequest)

Create withdrawal

Create a new withdrawal or transfer to the provided payment account

### Example

```javascript
import PayconductorSdk from 'payconductor-sdk';
let defaultClient = PayconductorSdk.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new PayconductorSdk.WithdrawalsAndTransfersApi();
let postWithdrawsRequest = new PayconductorSdk.PostWithdrawsRequest(); // PostWithdrawsRequest | 
apiInstance.postWithdraws(postWithdrawsRequest, (error, data, response) => {
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
 **postWithdrawsRequest** | [**PostWithdrawsRequest**](PostWithdrawsRequest.md)|  | 

### Return type

[**PostWithdraws200Response**](PostWithdraws200Response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

