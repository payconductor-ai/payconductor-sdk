# OpenAPI\Client\OrdersApi

Manage charges, check order status, and handle refunds.

All URIs are relative to https://app.payconductor.ai/api/v1, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**getOrders()**](OrdersApi.md#getOrders) | **GET** /orders/ | List orders |
| [**getOrdersById()**](OrdersApi.md#getOrdersById) | **GET** /orders/{id} | Get order by ID |
| [**postOrders()**](OrdersApi.md#postOrders) | **POST** /orders/ | Create order |
| [**postOrdersByIdConfirm()**](OrdersApi.md#postOrdersByIdConfirm) | **POST** /orders/{id}/confirm | Confirm order |
| [**postOrdersByIdRefund()**](OrdersApi.md#postOrdersByIdRefund) | **POST** /orders/{id}/refund | Refund order |


## `getOrders()`

```php
getOrders($page, $page_size, $end_date, $start_date, $id, $status)
```

List orders

Retrieve a list of orders. Use date filter and pagination parameters to refine results as needed.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\OrdersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$page = 1; // float
$page_size = 20; // float
$end_date = new \DateTime('2013-10-20T19:20:30+01:00'); // \DateTime
$start_date = new \DateTime('2013-10-20T19:20:30+01:00'); // \DateTime
$id = 'id_example'; // string
$status = 'status_example'; // string

try {
    $apiInstance->getOrders($page, $page_size, $end_date, $start_date, $id, $status);
} catch (Exception $e) {
    echo 'Exception when calling OrdersApi->getOrders: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **page** | **float**|  | [default to 1] |
| **page_size** | **float**|  | [default to 20] |
| **end_date** | **\DateTime**|  | [optional] |
| **start_date** | **\DateTime**|  | [optional] |
| **id** | **string**|  | [optional] |
| **status** | **string**|  | [optional] |

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

## `getOrdersById()`

```php
getOrdersById($id)
```

Get order by ID

Retrieve the complete data of an order by our ID

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\OrdersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string

try {
    $apiInstance->getOrdersById($id);
} catch (Exception $e) {
    echo 'Exception when calling OrdersApi->getOrdersById: ', $e->getMessage(), PHP_EOL;
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

## `postOrders()`

```php
postOrders($post_orders_request): \OpenAPI\Client\Model\PostOrders200Response
```

Create order

Create a new order for payment using the provided data

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\OrdersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$post_orders_request = new \OpenAPI\Client\Model\PostOrdersRequest(); // \OpenAPI\Client\Model\PostOrdersRequest

try {
    $result = $apiInstance->postOrders($post_orders_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrdersApi->postOrders: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **post_orders_request** | [**\OpenAPI\Client\Model\PostOrdersRequest**](../Model/PostOrdersRequest.md)|  | |

### Return type

[**\OpenAPI\Client\Model\PostOrders200Response**](../Model/PostOrders200Response.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `postOrdersByIdConfirm()`

```php
postOrdersByIdConfirm($id, $post_orders_request_payment): \OpenAPI\Client\Model\PostOrdersByIdConfirm200Response
```

Confirm order

Confirms a Draft order, setting the payment method and processing the charges associated with the order.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\OrdersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string
$post_orders_request_payment = new \OpenAPI\Client\Model\PostOrdersRequestPayment(); // \OpenAPI\Client\Model\PostOrdersRequestPayment | Payment data for the order (Pix, Credit Card, Bank Slip, NuPay, etc...)

try {
    $result = $apiInstance->postOrdersByIdConfirm($id, $post_orders_request_payment);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrdersApi->postOrdersByIdConfirm: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**|  | |
| **post_orders_request_payment** | [**\OpenAPI\Client\Model\PostOrdersRequestPayment**](../Model/PostOrdersRequestPayment.md)| Payment data for the order (Pix, Credit Card, Bank Slip, NuPay, etc...) | |

### Return type

[**\OpenAPI\Client\Model\PostOrdersByIdConfirm200Response**](../Model/PostOrdersByIdConfirm200Response.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `postOrdersByIdRefund()`

```php
postOrdersByIdRefund($id)
```

Refund order

Initiate a refund for the order specified by ID.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\OrdersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string

try {
    $apiInstance->postOrdersByIdRefund($id);
} catch (Exception $e) {
    echo 'Exception when calling OrdersApi->postOrdersByIdRefund: ', $e->getMessage(), PHP_EOL;
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
