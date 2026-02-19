# PayconductorSdk.OrdersApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getOrders**](OrdersApi.md#getOrders) | **GET** /orders/ | List orders
[**getOrdersById**](OrdersApi.md#getOrdersById) | **GET** /orders/{id} | Get order by ID
[**postOrders**](OrdersApi.md#postOrders) | **POST** /orders/ | Create order
[**postOrdersByIdConfirm**](OrdersApi.md#postOrdersByIdConfirm) | **POST** /orders/{id}/confirm | Confirm order
[**postOrdersByIdRefund**](OrdersApi.md#postOrdersByIdRefund) | **POST** /orders/{id}/refund | Refund order



## getOrders

> getOrders(page, pageSize, opts)

List orders

Retrieve a list of orders. Use date filter and pagination parameters to refine results as needed.

### Example

```javascript
import PayconductorSdk from 'payconductor-sdk';
let defaultClient = PayconductorSdk.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new PayconductorSdk.OrdersApi();
let page = 1; // Number | 
let pageSize = 20; // Number | 
let opts = {
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'id': "id_example", // String | 
  'status': "status_example" // String | 
};
apiInstance.getOrders(page, pageSize, opts, (error, data, response) => {
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
 **page** | **Number**|  | [default to 1]
 **pageSize** | **Number**|  | [default to 20]
 **endDate** | **Date**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **id** | **String**|  | [optional] 
 **status** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## getOrdersById

> getOrdersById(id)

Get order by ID

Retrieve the complete data of an order by our ID

### Example

```javascript
import PayconductorSdk from 'payconductor-sdk';
let defaultClient = PayconductorSdk.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new PayconductorSdk.OrdersApi();
let id = "id_example"; // String | 
apiInstance.getOrdersById(id, (error, data, response) => {
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


## postOrders

> PostOrders200Response postOrders(postOrdersRequest)

Create order

Create a new order for payment using the provided data

### Example

```javascript
import PayconductorSdk from 'payconductor-sdk';
let defaultClient = PayconductorSdk.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new PayconductorSdk.OrdersApi();
let postOrdersRequest = new PayconductorSdk.PostOrdersRequest(); // PostOrdersRequest | 
apiInstance.postOrders(postOrdersRequest, (error, data, response) => {
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
 **postOrdersRequest** | [**PostOrdersRequest**](PostOrdersRequest.md)|  | 

### Return type

[**PostOrders200Response**](PostOrders200Response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## postOrdersByIdConfirm

> PostOrdersByIdConfirm200Response postOrdersByIdConfirm(id, postOrdersRequestPayment)

Confirm order

Confirms a Draft order, setting the payment method and processing the charges associated with the order.

### Example

```javascript
import PayconductorSdk from 'payconductor-sdk';
let defaultClient = PayconductorSdk.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new PayconductorSdk.OrdersApi();
let id = "id_example"; // String | 
let postOrdersRequestPayment = new PayconductorSdk.PostOrdersRequestPayment(); // PostOrdersRequestPayment | Payment data for the order (Pix, Credit Card, Bank Slip, NuPay, etc...)
apiInstance.postOrdersByIdConfirm(id, postOrdersRequestPayment, (error, data, response) => {
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
 **id** | **String**|  | 
 **postOrdersRequestPayment** | [**PostOrdersRequestPayment**](PostOrdersRequestPayment.md)| Payment data for the order (Pix, Credit Card, Bank Slip, NuPay, etc...) | 

### Return type

[**PostOrdersByIdConfirm200Response**](PostOrdersByIdConfirm200Response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## postOrdersByIdRefund

> postOrdersByIdRefund(id)

Refund order

Initiate a refund for the order specified by ID.

### Example

```javascript
import PayconductorSdk from 'payconductor-sdk';
let defaultClient = PayconductorSdk.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new PayconductorSdk.OrdersApi();
let id = "id_example"; // String | 
apiInstance.postOrdersByIdRefund(id, (error, data, response) => {
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

