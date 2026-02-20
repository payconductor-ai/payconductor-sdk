# OrdersApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**getOrders**](#getorders) | **GET** /orders/ | List orders|
|[**getOrdersById**](#getordersbyid) | **GET** /orders/{id} | Get order by ID|
|[**postOrders**](#postorders) | **POST** /orders/ | Create order|
|[**postOrdersByIdConfirm**](#postordersbyidconfirm) | **POST** /orders/{id}/confirm | Confirm order|
|[**postOrdersByIdRefund**](#postordersbyidrefund) | **POST** /orders/{id}/refund | Refund order|

# **getOrders**
> getOrders()

Retrieve a list of orders. Use date filter and pagination parameters to refine results as needed.

### Example

```typescript
import {
    OrdersApi,
    Configuration
} from 'payconductor-sdk';

const configuration = new Configuration();
const apiInstance = new OrdersApi(configuration);

let page: number; // (default to 1)
let pageSize: number; // (default to 20)
let endDate: string; // (optional) (default to undefined)
let startDate: string; // (optional) (default to undefined)
let id: string; // (optional) (default to undefined)
let status: 'Generating' | 'Pending' | 'Completed' | 'Failed' | 'Canceled' | 'Refunding' | 'Refunded' | 'InDispute' | 'Chargeback'; // (optional) (default to undefined)

const { status, data } = await apiInstance.getOrders(
    page,
    pageSize,
    endDate,
    startDate,
    id,
    status
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **page** | [**number**] |  | defaults to 1|
| **pageSize** | [**number**] |  | defaults to 20|
| **endDate** | [**string**] |  | (optional) defaults to undefined|
| **startDate** | [**string**] |  | (optional) defaults to undefined|
| **id** | [**string**] |  | (optional) defaults to undefined|
| **status** | [**&#39;Generating&#39; | &#39;Pending&#39; | &#39;Completed&#39; | &#39;Failed&#39; | &#39;Canceled&#39; | &#39;Refunding&#39; | &#39;Refunded&#39; | &#39;InDispute&#39; | &#39;Chargeback&#39;**]**Array<&#39;Generating&#39; &#124; &#39;Pending&#39; &#124; &#39;Completed&#39; &#124; &#39;Failed&#39; &#124; &#39;Canceled&#39; &#124; &#39;Refunding&#39; &#124; &#39;Refunded&#39; &#124; &#39;InDispute&#39; &#124; &#39;Chargeback&#39;>** |  | (optional) defaults to undefined|


### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrdersById**
> getOrdersById()

Retrieve the complete data of an order by our ID

### Example

```typescript
import {
    OrdersApi,
    Configuration
} from 'payconductor-sdk';

const configuration = new Configuration();
const apiInstance = new OrdersApi(configuration);

let id: string; // (default to undefined)

const { status, data } = await apiInstance.getOrdersById(
    id
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **id** | [**string**] |  | defaults to undefined|


### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postOrders**
> PostOrders200Response postOrders(order)

Create a new order for payment using the provided data

### Example

```typescript
import {
    OrdersApi,
    Configuration,
    Order
} from 'payconductor-sdk';

const configuration = new Configuration();
const apiInstance = new OrdersApi(configuration);

let order: Order; //Order data for payment processing

const { status, data } = await apiInstance.postOrders(
    order
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **order** | **Order**| Order data for payment processing | |


### Return type

**PostOrders200Response**

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

# **postOrdersByIdConfirm**
> PostOrdersByIdConfirm200Response postOrdersByIdConfirm(paymentData)

Confirms a Draft order, setting the payment method and processing the charges associated with the order.

### Example

```typescript
import {
    OrdersApi,
    Configuration,
    PaymentData
} from 'payconductor-sdk';

const configuration = new Configuration();
const apiInstance = new OrdersApi(configuration);

let id: string; // (default to undefined)
let paymentData: PaymentData; //Payment data for the order (Pix, Credit Card, Bank Slip, NuPay, etc...)

const { status, data } = await apiInstance.postOrdersByIdConfirm(
    id,
    paymentData
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **paymentData** | **PaymentData**| Payment data for the order (Pix, Credit Card, Bank Slip, NuPay, etc...) | |
| **id** | [**string**] |  | defaults to undefined|


### Return type

**PostOrdersByIdConfirm200Response**

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

# **postOrdersByIdRefund**
> postOrdersByIdRefund()

Initiate a refund for the order specified by ID.

### Example

```typescript
import {
    OrdersApi,
    Configuration
} from 'payconductor-sdk';

const configuration = new Configuration();
const apiInstance = new OrdersApi(configuration);

let id: string; // (default to undefined)

const { status, data } = await apiInstance.postOrdersByIdRefund(
    id
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **id** | [**string**] |  | defaults to undefined|


### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

