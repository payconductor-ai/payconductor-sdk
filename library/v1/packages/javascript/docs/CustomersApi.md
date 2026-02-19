# PayconductorSdk.CustomersApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCustomers**](CustomersApi.md#getCustomers) | **GET** /customers/ | Get all customers
[**getCustomersById**](CustomersApi.md#getCustomersById) | **GET** /customers/{id} | Get customer by ID
[**patchCustomersById**](CustomersApi.md#patchCustomersById) | **PATCH** /customers/{id} | Update customer data
[**postCustomers**](CustomersApi.md#postCustomers) | **POST** /customers/ | Create new customer



## getCustomers

> getCustomers(page, pageSize, opts)

Get all customers

Retrieve a list of all customers associated with the organization, with support for filters and pagination.

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
let opts = {
  'email': "email_example", // String | 
  'name': "name_example", // String | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'startDate': new Date("2013-10-20T19:20:30+01:00") // Date | 
};
apiInstance.getCustomers(page, pageSize, opts, (error, data, response) => {
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

Get customer by ID

Retrieve the complete details of a specific customer using their unique ID.

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

Update customer data

Update the information of an existing customer by providing the new data in the request body.

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

Create new customer

Create a new customer by providing the required data in the request body.

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

