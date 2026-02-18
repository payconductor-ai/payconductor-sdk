# OpenAPI\Client\TransferApi

Initiate and monitor withdrawals and transfers to your external accounts.

All URIs are relative to https://app.payconductor.ai/api/v1, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**getWithdraws()**](TransferApi.md#getWithdraws) | **GET** /withdraws/ | List withdrawals |
| [**getWithdrawsById()**](TransferApi.md#getWithdrawsById) | **GET** /withdraws/{id} | Get withdrawal by ID |
| [**postWithdraws()**](TransferApi.md#postWithdraws) | **POST** /withdraws/ | Create withdrawal |


## `getWithdraws()`

```php
getWithdraws($period, $page, $page_size, $end_date, $start_date, $id)
```

List withdrawals

Returns a paginated list of withdrawals and transfers. Filter by creation date or search by ID (withdrawal ID, external ID, acquirer ID, or End2EndID)

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\TransferApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$period = 'Last7Days'; // string
$page = 1; // float
$page_size = 20; // float
$end_date = new \DateTime('2013-10-20T19:20:30+01:00'); // \DateTime
$start_date = new \DateTime('2013-10-20T19:20:30+01:00'); // \DateTime
$id = 'id_example'; // string

try {
    $apiInstance->getWithdraws($period, $page, $page_size, $end_date, $start_date, $id);
} catch (Exception $e) {
    echo 'Exception when calling TransferApi->getWithdraws: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **period** | **string**|  | [default to &#39;Last7Days&#39;] |
| **page** | **float**|  | [default to 1] |
| **page_size** | **float**|  | [default to 20] |
| **end_date** | **\DateTime**|  | [optional] |
| **start_date** | **\DateTime**|  | [optional] |
| **id** | **string**|  | [optional] |

### Return type

void (empty response body)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getWithdrawsById()`

```php
getWithdrawsById($id)
```

Get withdrawal by ID

Returns the details of a specific withdrawal or transfer using its ID

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\TransferApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string

try {
    $apiInstance->getWithdrawsById($id);
} catch (Exception $e) {
    echo 'Exception when calling TransferApi->getWithdrawsById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**|  | |

### Return type

void (empty response body)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `postWithdraws()`

```php
postWithdraws($post_withdraws_request): \OpenAPI\Client\Model\PostWithdraws200Response
```

Create withdrawal

Create a new withdrawal or transfer to the provided payment account

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\TransferApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$post_withdraws_request = new \OpenAPI\Client\Model\PostWithdrawsRequest(); // \OpenAPI\Client\Model\PostWithdrawsRequest

try {
    $result = $apiInstance->postWithdraws($post_withdraws_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TransferApi->postWithdraws: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **post_withdraws_request** | [**\OpenAPI\Client\Model\PostWithdrawsRequest**](../Model/PostWithdrawsRequest.md)|  | |

### Return type

[**\OpenAPI\Client\Model\PostWithdraws200Response**](../Model/PostWithdraws200Response.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
