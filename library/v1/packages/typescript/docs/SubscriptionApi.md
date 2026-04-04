# SubscriptionApi

All URIs are relative to *http://localhost:5173/api/v1*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**subscriptionCancel**](#subscriptioncancel) | **DELETE** /subscriptions/{id} | Cancel Subscription|
|[**subscriptionCreate**](#subscriptioncreate) | **POST** /subscriptions/ | Create Subscription|
|[**subscriptionList**](#subscriptionlist) | **GET** /subscriptions/ | List Subscriptions|
|[**subscriptionRead**](#subscriptionread) | **GET** /subscriptions/{id} | Get Subscription By ID|

# **subscriptionCancel**
> SubscriptionResponse subscriptionCancel()

Cancel an active subscription.

### Example

```typescript
import {
    SubscriptionApi,
    Configuration
} from '@payconductor/sdk';

const configuration = new Configuration();
const apiInstance = new SubscriptionApi(configuration);

let id: string; // (default to undefined)
let reason: 'DunningExhausted' | 'RetryScheduled' | 'Manual' | 'CustomerRequest' | 'PaymentFailure'; // (optional) (default to undefined)

const { status, data } = await apiInstance.subscriptionCancel(
    id,
    reason
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **id** | [**string**] |  | defaults to undefined|
| **reason** | [**&#39;DunningExhausted&#39; | &#39;RetryScheduled&#39; | &#39;Manual&#39; | &#39;CustomerRequest&#39; | &#39;PaymentFailure&#39;**]**Array<&#39;DunningExhausted&#39; &#124; &#39;RetryScheduled&#39; &#124; &#39;Manual&#39; &#124; &#39;CustomerRequest&#39; &#124; &#39;PaymentFailure&#39;>** |  | (optional) defaults to undefined|


### Return type

**SubscriptionResponse**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Response with all recurring subscription data |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionCreate**
> SubscriptionResponse subscriptionCreate(createSubscription)

Create a new recurring subscription using a saved card token.

### Example

```typescript
import {
    SubscriptionApi,
    Configuration,
    CreateSubscription
} from '@payconductor/sdk';

const configuration = new Configuration();
const apiInstance = new SubscriptionApi(configuration);

let createSubscription: CreateSubscription; //Input for creating a new recurring subscription. Uses the same format as an order with additional subscription control fields.

const { status, data } = await apiInstance.subscriptionCreate(
    createSubscription
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **createSubscription** | **CreateSubscription**| Input for creating a new recurring subscription. Uses the same format as an order with additional subscription control fields. | |


### Return type

**SubscriptionResponse**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Response with all recurring subscription data |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionList**
> SubscriptionList200Response subscriptionList()

Retrieve a list of subscriptions for the organization.

### Example

```typescript
import {
    SubscriptionApi,
    Configuration
} from '@payconductor/sdk';

const configuration = new Configuration();
const apiInstance = new SubscriptionApi(configuration);

let page: number; // (default to 1)
let pageSize: number; // (default to 20)
let endDate: string; // (optional) (default to undefined)
let startDate: string; // (optional) (default to undefined)
let id: string; // (optional) (default to undefined)
let status: 'Active' | 'Inactive' | 'Canceled' | 'PastDue' | 'Completed'; // (optional) (default to undefined)

const { status, data } = await apiInstance.subscriptionList(
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
| **status** | [**&#39;Active&#39; | &#39;Inactive&#39; | &#39;Canceled&#39; | &#39;PastDue&#39; | &#39;Completed&#39;**]**Array<&#39;Active&#39; &#124; &#39;Inactive&#39; &#124; &#39;Canceled&#39; &#124; &#39;PastDue&#39; &#124; &#39;Completed&#39;>** |  | (optional) defaults to undefined|


### Return type

**SubscriptionList200Response**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Response for status 200 |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionRead**
> SubscriptionResponse subscriptionRead()

Retrieve the complete data of a subscription by its ID.

### Example

```typescript
import {
    SubscriptionApi,
    Configuration
} from '@payconductor/sdk';

const configuration = new Configuration();
const apiInstance = new SubscriptionApi(configuration);

let id: string; // (default to undefined)

const { status, data } = await apiInstance.subscriptionRead(
    id
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **id** | [**string**] |  | defaults to undefined|


### Return type

**SubscriptionResponse**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Response with all recurring subscription data |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

