# payconductor-sdk

PayConductor API Documentation.

This documentation covers all available features in the PayConductor RESTful API, including authentication, resource management, and usage examples.

<br />

<br />

----

<br />


# Authentication

PayConductor API uses HTTP Basic authentication to validate requests. You need to provide your credentials (Client ID and Client Secret) in the `client:secret` format encoded in Base64.

<br />

## Getting Credentials

1. Access the PayConductor admin panel
2. Navigate to **Settings > API Keys**
3. Generate a new credentials pair (Client ID and Client Secret)
4. Store the Client Secret in a secure location - it will not be displayed again

<br />

## Authentication Format

Credentials must be sent in the `Authorization` header using the Basic scheme:

```
Authorization: Basic base64(client_id:client_secret)
```

<br />

## Node.js Example

```javascript
const clientId = 'your_client_id';
const clientSecret = 'your_client_secret';

// Encode credentials in Base64
const credentials = Buffer.from(`${clientId}:${clientSecret}`).toString('base64');

const response = await fetch('https://api.payconductor.com/api/v1/orders', {
  method: 'GET',
  headers: {
    'Authorization': `Basic ${credentials}`,
    'Content-Type': 'application/json'
  }
});

const data = await response.json();
console.log(data);
```

<br />

## Authentication Errors

| Code | Description |
|------|-------------|
| `401` | Invalid or missing credentials |
| `403` | Valid credentials but no permission for the resource |
| `429` | Too many requests (rate limit exceeded) |

### Error Response Example

```json
{
  \"error\": {
    \"code\": \"UNAUTHORIZED\",
    \"message\": \"Invalid credentials\",
    \"details\": \"The provided client ID or secret is incorrect\"
  }
}
```


## Installation & Usage

### Requirements

PHP 8.1 and later.

### Composer

To install the bindings via [Composer](https://getcomposer.org/), add the following to `composer.json`:

```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/GIT_USER_ID/GIT_REPO_ID.git"
    }
  ],
  "require": {
    "GIT_USER_ID/GIT_REPO_ID": "*@dev"
  }
}
```

Then run `composer install`

### Manual Installation

Download the files and include `autoload.php`:

```php
<?php
require_once('/path/to/payconductor-sdk/vendor/autoload.php');
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

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

## API Endpoints

All URIs are relative to *https://app.payconductor.ai/api/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CardTokenizationApi* | [**postCardTokenization**](docs/Api/CardTokenizationApi.md#postcardtokenization) | **POST** /card-tokenization/ | Tokenize card
*CustomersApi* | [**deleteCustomersById**](docs/Api/CustomersApi.md#deletecustomersbyid) | **DELETE** /customers/{id} | 
*CustomersApi* | [**getCustomers**](docs/Api/CustomersApi.md#getcustomers) | **GET** /customers/ | 
*CustomersApi* | [**getCustomersById**](docs/Api/CustomersApi.md#getcustomersbyid) | **GET** /customers/{id} | 
*CustomersApi* | [**patchCustomersById**](docs/Api/CustomersApi.md#patchcustomersbyid) | **PATCH** /customers/{id} | 
*CustomersApi* | [**postCustomers**](docs/Api/CustomersApi.md#postcustomers) | **POST** /customers/ | 
*OrdersApi* | [**getOrders**](docs/Api/OrdersApi.md#getorders) | **GET** /orders/ | List orders
*OrdersApi* | [**getOrdersById**](docs/Api/OrdersApi.md#getordersbyid) | **GET** /orders/{id} | Get order by ID
*OrdersApi* | [**postOrders**](docs/Api/OrdersApi.md#postorders) | **POST** /orders/ | Create order
*OrdersApi* | [**postOrdersByIdRefund**](docs/Api/OrdersApi.md#postordersbyidrefund) | **POST** /orders/{id}/refund | Refund order
*WithdrawalsAndTransfersApi* | [**getWithdraws**](docs/Api/WithdrawalsAndTransfersApi.md#getwithdraws) | **GET** /withdraws/ | List withdrawals
*WithdrawalsAndTransfersApi* | [**getWithdrawsById**](docs/Api/WithdrawalsAndTransfersApi.md#getwithdrawsbyid) | **GET** /withdraws/{id} | Get withdrawal by ID
*WithdrawalsAndTransfersApi* | [**postWithdraws**](docs/Api/WithdrawalsAndTransfersApi.md#postwithdraws) | **POST** /withdraws/ | Create withdrawal

## Models

- [BankSlip](docs/Model/BankSlip.md)
- [BankSlipExpirationInDays](docs/Model/BankSlipExpirationInDays.md)
- [CompleteCardData](docs/Model/CompleteCardData.md)
- [CompleteCardDataExpiration](docs/Model/CompleteCardDataExpiration.md)
- [CreditCard](docs/Model/CreditCard.md)
- [CreditCardCard](docs/Model/CreditCardCard.md)
- [CreditCardInstallments](docs/Model/CreditCardInstallments.md)
- [Customer](docs/Model/Customer.md)
- [Customer1](docs/Model/Customer1.md)
- [Customer2](docs/Model/Customer2.md)
- [Customer2DocumentType](docs/Model/Customer2DocumentType.md)
- [CustomerAddress](docs/Model/CustomerAddress.md)
- [MerchantInput](docs/Model/MerchantInput.md)
- [NuPay](docs/Model/NuPay.md)
- [NuPayNuPay](docs/Model/NuPayNuPay.md)
- [PicPay](docs/Model/PicPay.md)
- [Pix](docs/Model/Pix.md)
- [PixExpirationInSeconds](docs/Model/PixExpirationInSeconds.md)
- [PostCardTokenization200Response](docs/Model/PostCardTokenization200Response.md)
- [PostCardTokenizationRequest](docs/Model/PostCardTokenizationRequest.md)
- [PostCardTokenizationRequestCustomer](docs/Model/PostCardTokenizationRequestCustomer.md)
- [PostCardTokenizationRequestCustomerAnyOf](docs/Model/PostCardTokenizationRequestCustomerAnyOf.md)
- [PostOrders200Response](docs/Model/PostOrders200Response.md)
- [PostOrders200ResponseBankSlip](docs/Model/PostOrders200ResponseBankSlip.md)
- [PostOrders200ResponseCreditCard](docs/Model/PostOrders200ResponseCreditCard.md)
- [PostOrders200ResponseNuPay](docs/Model/PostOrders200ResponseNuPay.md)
- [PostOrders200ResponseOrderItemsInner](docs/Model/PostOrders200ResponseOrderItemsInner.md)
- [PostOrders200ResponsePicPay](docs/Model/PostOrders200ResponsePicPay.md)
- [PostOrders200ResponsePix](docs/Model/PostOrders200ResponsePix.md)
- [PostOrders200ResponseSession](docs/Model/PostOrders200ResponseSession.md)
- [PostOrdersRequest](docs/Model/PostOrdersRequest.md)
- [PostOrdersRequestFingerprints](docs/Model/PostOrdersRequestFingerprints.md)
- [PostOrdersRequestItemsInner](docs/Model/PostOrdersRequestItemsInner.md)
- [PostOrdersRequestPayment](docs/Model/PostOrdersRequestPayment.md)
- [PostOrdersRequestSession](docs/Model/PostOrdersRequestSession.md)
- [PostWithdraws200Response](docs/Model/PostWithdraws200Response.md)
- [PostWithdraws200ResponsePayedAt](docs/Model/PostWithdraws200ResponsePayedAt.md)
- [PostWithdraws200ResponsePayoutAccount](docs/Model/PostWithdraws200ResponsePayoutAccount.md)
- [PostWithdrawsRequest](docs/Model/PostWithdrawsRequest.md)
- [PostWithdrawsRequestPayoutAccount](docs/Model/PostWithdrawsRequestPayoutAccount.md)
- [TokenizedCard](docs/Model/TokenizedCard.md)

## Authorization

Authentication schemes defined for the API:
### basicAuth

- **Type**: HTTP basic authentication

## Tests

To run the tests, use:

```bash
composer install
vendor/bin/phpunit
```

## Author



## About this package

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: `1.0.0`
    - Generator version: `7.20.0`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`
