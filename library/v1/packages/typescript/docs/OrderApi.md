# OrderApi

All URIs are relative to *http://localhost:5173/api/v1*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**orderConfirm**](#orderconfirm) | **POST** /orders/{id}/confirm | Confirm Order|
|[**orderCreate**](#ordercreate) | **POST** /orders/ | Create Order|
|[**orderList**](#orderlist) | **GET** /orders/ | List Orders|
|[**orderRead**](#orderread) | **GET** /orders/{id} | Get Order By ID|
|[**orderRefund**](#orderrefund) | **POST** /orders/{id}/refund | Refund Order|
|[**orderSimpleRead**](#ordersimpleread) | **GET** /orders/{id}/simple | Get Order By External ID|
|[**orderStatus**](#orderstatus) | **GET** /orders/{id}/status | Get Order Status|

# **orderConfirm**
> OrderConfirmResponse orderConfirm(orderPaymentData)

Confirms a Draft order or an order with a pending 3DS challenge. For Draft orders, sets the payment method and processes the charges. For orders awaiting 3DS challenge completion, retrieves the updated status after the client-side challenge flow. Accepts Basic auth (backend SDK) or intentToken query param (iframe).

### Example

```typescript
import {
    OrderApi,
    Configuration,
    OrderPaymentData
} from '@payconductor/sdk';

const configuration = new Configuration();
const apiInstance = new OrderApi(configuration);

let id: string; // (default to undefined)
let orderPaymentData: OrderPaymentData; //Payment data for the order (Pix, Credit Card, Bank Slip, NuPay, etc...)

const { status, data } = await apiInstance.orderConfirm(
    id,
    orderPaymentData
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orderPaymentData** | **OrderPaymentData**| Payment data for the order (Pix, Credit Card, Bank Slip, NuPay, etc...) | |
| **id** | [**string**] |  | defaults to undefined|


### Return type

**OrderConfirmResponse**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Response after confirming a draft order |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orderCreate**
> OrderCreateResponse orderCreate(orderCreateRequest)

Create a new order for payment using the provided data.

### Example

```typescript
import {
    OrderApi,
    Configuration,
    OrderCreateRequest
} from '@payconductor/sdk';

const configuration = new Configuration();
const apiInstance = new OrderApi(configuration);

let orderCreateRequest: OrderCreateRequest; //Order data for payment processing

const { status, data } = await apiInstance.orderCreate(
    orderCreateRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orderCreateRequest** | **OrderCreateRequest**| Order data for payment processing | |


### Return type

**OrderCreateResponse**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Response after creating an order |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orderList**
> orderList()

Retrieve a list of orders. Use date filter and pagination parameters to refine results as needed.

### Example

```typescript
import {
    OrderApi,
    Configuration
} from '@payconductor/sdk';

const configuration = new Configuration();
const apiInstance = new OrderApi(configuration);

let page: number; // (default to 1)
let pageSize: number; // (default to 20)
let endDate: string; // (optional) (default to undefined)
let startDate: string; // (optional) (default to undefined)
let id: string; // (optional) (default to undefined)
let status: 'Generating' | 'Pending' | 'Completed' | 'Failed' | 'Canceled' | 'Refunding' | 'Refunded' | 'InDispute' | 'Chargeback'; // (optional) (default to undefined)

const { status, data } = await apiInstance.orderList(
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

# **orderRead**
> orderRead()

Retrieve the complete data of an order by our ID.

### Example

```typescript
import {
    OrderApi,
    Configuration
} from '@payconductor/sdk';

const configuration = new Configuration();
const apiInstance = new OrderApi(configuration);

let id: string; // (default to undefined)

const { status, data } = await apiInstance.orderRead(
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

# **orderRefund**
> orderRefund()

Initiate a refund for the order specified by ID.

### Example

```typescript
import {
    OrderApi,
    Configuration
} from '@payconductor/sdk';

const configuration = new Configuration();
const apiInstance = new OrderApi(configuration);

let id: string; // (default to undefined)

const { status, data } = await apiInstance.orderRefund(
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

# **orderSimpleRead**
> orderSimpleRead()

Retrieve basic order data by external ID provided

### Example

```typescript
import {
    OrderApi,
    Configuration
} from '@payconductor/sdk';

const configuration = new Configuration();
const apiInstance = new OrderApi(configuration);

let id: string; // (default to undefined)

const { status, data } = await apiInstance.orderSimpleRead(
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

# **orderStatus**
> OrderConfirmResponse orderStatus()

Poll the current status of an order. Use after 3DS challenge completion to retrieve the final payment result.

### Example

```typescript
import {
    OrderApi,
    Configuration
} from '@payconductor/sdk';

const configuration = new Configuration();
const apiInstance = new OrderApi(configuration);

let id: string; // (default to undefined)

const { status, data } = await apiInstance.orderStatus(
    id
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **id** | [**string**] |  | defaults to undefined|


### Return type

**OrderConfirmResponse**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Response after confirming a draft order |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

