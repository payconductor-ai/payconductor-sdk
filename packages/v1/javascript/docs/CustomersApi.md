# PayconductorSdk.CustomersApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteCustomersById**](CustomersApi.md#deleteCustomersById) | **DELETE** /customers/{id} | 
[**getCustomers**](CustomersApi.md#getCustomers) | **GET** /customers/ | 
[**getCustomersById**](CustomersApi.md#getCustomersById) | **GET** /customers/{id} | 
[**patchCustomersById**](CustomersApi.md#patchCustomersById) | **PATCH** /customers/{id} | 
[**postCustomers**](CustomersApi.md#postCustomers) | **POST** /customers/ | 



## deleteCustomersById

> deleteCustomersById(id)



### Example

```javascript
import PayconductorSdk from 'payconductor-sdk';
let defaultClient = PayconductorSdk.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new PayconductorSdk.CustomersApi();
let id = "id_example"; // String | 
apiInstance.deleteCustomersById(id, (error, data, response) => {
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


## getCustomers

> getCustomers(page, pageSize, period, opts)



### Example

```javascript
import PayconductorSdk from 'payconductor-sdk';
let defaultClient = PayconductorSdk.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new PayconductorSdk.CustomersApi();
let page = 1; // Number | 
let pageSize = 20; // Number | 
let period = "'Last7Days'"; // String | 
let opts = {
  'email': "email_example", // String | 
  'name': "name_example", // String | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'startDate': new Date("2013-10-20T19:20:30+01:00") // Date | 
};
apiInstance.getCustomers(page, pageSize, period, opts, (error, data, response) => {
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
 **period** | **String**|  | [default to &#39;Last7Days&#39;]
 **email** | **String**|  | [optional] 
 **name** | **String**|  | [optional] 
 **endDate** | **Date**|  | [optional] 
 **startDate** | **Date**|  | [optional] 

### Return type

null (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## getCustomersById

> getCustomersById(id)



### Example

```javascript
import PayconductorSdk from 'payconductor-sdk';
let defaultClient = PayconductorSdk.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new PayconductorSdk.CustomersApi();
let id = "id_example"; // String | 
apiInstance.getCustomersById(id, (error, data, response) => {
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


## patchCustomersById

> patchCustomersById(id, customer1)



### Example

```javascript
import PayconductorSdk from 'payconductor-sdk';
let defaultClient = PayconductorSdk.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new PayconductorSdk.CustomersApi();
let id = "id_example"; // String | 
let customer1 = new PayconductorSdk.Customer1(); // Customer1 | Schema for creating a new customer
apiInstance.patchCustomersById(id, customer1, (error, data, response) => {
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
 **customer1** | [**Customer1**](Customer1.md)| Schema for creating a new customer | 

### Return type

null (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## postCustomers

> postCustomers(customer)



### Example

```javascript
import PayconductorSdk from 'payconductor-sdk';
let defaultClient = PayconductorSdk.ApiClient.instance;
// Configure HTTP basic authorization: basicAuth
let basicAuth = defaultClient.authentications['basicAuth'];
basicAuth.username = 'YOUR USERNAME';
basicAuth.password = 'YOUR PASSWORD';

let apiInstance = new PayconductorSdk.CustomersApi();
let customer = new PayconductorSdk.Customer(); // Customer | Schema for creating a new customer
apiInstance.postCustomers(customer, (error, data, response) => {
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
 **customer** | [**Customer**](Customer.md)| Schema for creating a new customer | 

### Return type

null (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

