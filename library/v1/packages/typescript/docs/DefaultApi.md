# DefaultApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**getSdkSettingsPaymentMethods**](#getsdksettingspaymentmethods) | **GET** /sdk/settings/payment-methods | |

# **getSdkSettingsPaymentMethods**
> getSdkSettingsPaymentMethods()


### Example

```typescript
import {
    DefaultApi,
    Configuration
} from '@payconductor/sdk';

const configuration = new Configuration();
const apiInstance = new DefaultApi(configuration);

const { status, data } = await apiInstance.getSdkSettingsPaymentMethods();
```

### Parameters
This endpoint does not have any parameters.


### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

