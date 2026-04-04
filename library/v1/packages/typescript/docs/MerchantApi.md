# MerchantApi

All URIs are relative to *http://localhost:5173/api/v1*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**getMerchants**](#getmerchants) | **GET** /merchants/ | List Merchants|
|[**getMerchantsById**](#getmerchantsbyid) | **GET** /merchants/{id} | Get Merchant By ID|
|[**getMerchantsByIdDocuments**](#getmerchantsbyiddocuments) | **GET** /merchants/{id}/documents | List Merchant Documents|
|[**postMerchants**](#postmerchants) | **POST** /merchants/ | Create Merchant|
|[**postMerchantsByIdDocumentsByType**](#postmerchantsbyiddocumentsbytype) | **POST** /merchants/{id}/documents/{type} | Upload Merchant Document|
|[**postMerchantsByIdFlows**](#postmerchantsbyidflows) | **POST** /merchants/{id}/flows | Configure Merchant Flows|
|[**postMerchantsByIdSubaccounts**](#postmerchantsbyidsubaccounts) | **POST** /merchants/{id}/subaccounts | Update Merchant Subaccounts|

# **getMerchants**
> getMerchants()

Endpoint for retrieving all merchants of the organization with optional filters for email, status, name, and document.

### Example

```typescript
import {
    MerchantApi,
    Configuration
} from '@payconductor/sdk';

const configuration = new Configuration();
const apiInstance = new MerchantApi(configuration);

let page: number; // (default to 1)
let pageSize: number; // (default to 20)
let document: string; // (optional) (default to undefined)
let email: string; // (optional) (default to undefined)
let name: string; // (optional) (default to undefined)
let status: 'Creating' | 'WaitingDocuments' | 'WaitingOnboarding' | 'Analysing' | 'Refused' | 'Failed' | 'Approved'; // (optional) (default to undefined)

const { status, data } = await apiInstance.getMerchants(
    page,
    pageSize,
    document,
    email,
    name,
    status
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **page** | [**number**] |  | defaults to 1|
| **pageSize** | [**number**] |  | defaults to 20|
| **document** | [**string**] |  | (optional) defaults to undefined|
| **email** | [**string**] |  | (optional) defaults to undefined|
| **name** | [**string**] |  | (optional) defaults to undefined|
| **status** | [**&#39;Creating&#39; | &#39;WaitingDocuments&#39; | &#39;WaitingOnboarding&#39; | &#39;Analysing&#39; | &#39;Refused&#39; | &#39;Failed&#39; | &#39;Approved&#39;**]**Array<&#39;Creating&#39; &#124; &#39;WaitingDocuments&#39; &#124; &#39;WaitingOnboarding&#39; &#124; &#39;Analysing&#39; &#124; &#39;Refused&#39; &#124; &#39;Failed&#39; &#124; &#39;Approved&#39;>** |  | (optional) defaults to undefined|


### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMerchantsById**
> MerchantResponse getMerchantsById()

Endpoint for fetching a merchant by ID, returning all related data.

### Example

```typescript
import {
    MerchantApi,
    Configuration
} from '@payconductor/sdk';

const configuration = new Configuration();
const apiInstance = new MerchantApi(configuration);

let id: string; // (default to undefined)

const { status, data } = await apiInstance.getMerchantsById(
    id
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **id** | [**string**] |  | defaults to undefined|


### Return type

**MerchantResponse**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Modelo de resposta com todos os dados do merchant |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMerchantsByIdDocuments**
> getMerchantsByIdDocuments()

Returns all documents uploaded for a specific merchant.

### Example

```typescript
import {
    MerchantApi,
    Configuration
} from '@payconductor/sdk';

const configuration = new Configuration();
const apiInstance = new MerchantApi(configuration);

let id: string; // (default to undefined)

const { status, data } = await apiInstance.getMerchantsByIdDocuments(
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

# **postMerchants**
> MerchantResponse postMerchants(merchant)

Endpoint for full creation of a new merchant.

### Example

```typescript
import {
    MerchantApi,
    Configuration,
    Merchant
} from '@payconductor/sdk';

const configuration = new Configuration();
const apiInstance = new MerchantApi(configuration);

let merchant: Merchant; //Model for merchant creation with all required data

const { status, data } = await apiInstance.postMerchants(
    merchant
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **merchant** | **Merchant**| Model for merchant creation with all required data | |


### Return type

**MerchantResponse**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Modelo de resposta com todos os dados do merchant |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postMerchantsByIdDocumentsByType**
> postMerchantsByIdDocumentsByType()

Uploads a document for the merchant.

### Example

```typescript
import {
    MerchantApi,
    Configuration
} from '@payconductor/sdk';

const configuration = new Configuration();
const apiInstance = new MerchantApi(configuration);

let id: string; // (default to undefined)
let type: 'selfie-id' | 'address-indicator' | 'cnpj-card' | 'social-contract' | 'identification-front' | 'identification-back' | 'activity-proof'; // (default to 'selfie-id')
let file: File; // (default to '[B@6785786d')

const { status, data } = await apiInstance.postMerchantsByIdDocumentsByType(
    id,
    type,
    file
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **id** | [**string**] |  | defaults to undefined|
| **type** | [**&#39;selfie-id&#39; | &#39;address-indicator&#39; | &#39;cnpj-card&#39; | &#39;social-contract&#39; | &#39;identification-front&#39; | &#39;identification-back&#39; | &#39;activity-proof&#39;**]**Array<&#39;selfie-id&#39; &#124; &#39;address-indicator&#39; &#124; &#39;cnpj-card&#39; &#124; &#39;social-contract&#39; &#124; &#39;identification-front&#39; &#124; &#39;identification-back&#39; &#124; &#39;activity-proof&#39;>** |  | defaults to 'selfie-id'|
| **file** | [**File**] |  | defaults to '[B@6785786d'|


### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined


[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postMerchantsByIdFlows**
> postMerchantsByIdFlows(merchantFlow)

Endpoint to configure the flows of a merchant, such as order creation, confirmations and refunds.

### Example

```typescript
import {
    MerchantApi,
    Configuration,
    MerchantFlow
} from '@payconductor/sdk';

const configuration = new Configuration();
const apiInstance = new MerchantApi(configuration);

let id: string; // (default to undefined)
let merchantFlow: MerchantFlow; //Schema for configuring a merchant flow

const { status, data } = await apiInstance.postMerchantsByIdFlows(
    id,
    merchantFlow
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **merchantFlow** | **MerchantFlow**| Schema for configuring a merchant flow | |
| **id** | [**string**] |  | defaults to undefined|


### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: Not defined


[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postMerchantsByIdSubaccounts**
> PostMerchantsByIdSubaccounts200Response postMerchantsByIdSubaccounts()

When subaccounts are rejected, they will be recreated when calling this endpoint.

### Example

```typescript
import {
    MerchantApi,
    Configuration
} from '@payconductor/sdk';

const configuration = new Configuration();
const apiInstance = new MerchantApi(configuration);

let id: string; // (default to undefined)

const { status, data } = await apiInstance.postMerchantsByIdSubaccounts(
    id
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **id** | [**string**] |  | defaults to undefined|


### Return type

**PostMerchantsByIdSubaccounts200Response**

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

