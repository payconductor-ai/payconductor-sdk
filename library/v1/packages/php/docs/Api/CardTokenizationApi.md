# OpenAPI\Client\CardTokenizationApi



All URIs are relative to https://app.payconductor.ai/api/v1, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**postCardTokenization()**](CardTokenizationApi.md#postCardTokenization) | **POST** /card-tokenization/ | Tokenize card |


## `postCardTokenization()`

```php
postCardTokenization($post_card_tokenization_request): \OpenAPI\Client\Model\PostCardTokenization200Response
```

Tokenize card

Tokenize credit cards for future charges.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\CardTokenizationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$post_card_tokenization_request = new \OpenAPI\Client\Model\PostCardTokenizationRequest(); // \OpenAPI\Client\Model\PostCardTokenizationRequest | Data for creating a customer card

try {
    $result = $apiInstance->postCardTokenization($post_card_tokenization_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CardTokenizationApi->postCardTokenization: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **post_card_tokenization_request** | [**\OpenAPI\Client\Model\PostCardTokenizationRequest**](../Model/PostCardTokenizationRequest.md)| Data for creating a customer card | |

### Return type

[**\OpenAPI\Client\Model\PostCardTokenization200Response**](../Model/PostCardTokenization200Response.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
