## payconductor-sdk@1.0.0

This generator creates TypeScript/JavaScript client that utilizes [axios](https://github.com/axios/axios). The generated Node module can be used in the following environments:

Environment
* Node.js
* Webpack
* Browserify

Language level
* ES5 - you must have a Promises/A+ library installed
* ES6

Module system
* CommonJS
* ES6 module system

It can be used in both TypeScript and JavaScript. In TypeScript, the definition will be automatically resolved via `package.json`. ([Reference](https://www.typescriptlang.org/docs/handbook/declaration-files/consumption.html))

### Building

To build and compile the typescript sources to javascript use:
```
npm install
npm run build
```

### Publishing

First build the package then run `npm publish`

### Consuming

navigate to the folder of your consuming project and run one of the following commands.

_published:_

```
npm install payconductor-sdk@1.0.0 --save
```

_unPublished (not recommended):_

```
npm install PATH_TO_GENERATED_PACKAGE --save
```

### Documentation for API Endpoints

All URIs are relative to *https://app.payconductor.ai/api/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CardTokenizationApi* | [**postCardTokenization**](docs/CardTokenizationApi.md#postcardtokenization) | **POST** /card-tokenization/ | Tokenize card
*CustomerApi* | [**deleteCustomersById**](docs/CustomerApi.md#deletecustomersbyid) | **DELETE** /customers/{id} | 
*CustomerApi* | [**getCustomers**](docs/CustomerApi.md#getcustomers) | **GET** /customers/ | 
*CustomerApi* | [**getCustomersById**](docs/CustomerApi.md#getcustomersbyid) | **GET** /customers/{id} | 
*CustomerApi* | [**patchCustomersById**](docs/CustomerApi.md#patchcustomersbyid) | **PATCH** /customers/{id} | 
*CustomerApi* | [**postCustomers**](docs/CustomerApi.md#postcustomers) | **POST** /customers/ | 
*OrderApi* | [**getOrders**](docs/OrderApi.md#getorders) | **GET** /orders/ | List orders
*OrderApi* | [**getOrdersById**](docs/OrderApi.md#getordersbyid) | **GET** /orders/{id} | Get order by ID
*OrderApi* | [**postOrders**](docs/OrderApi.md#postorders) | **POST** /orders/ | Create order
*OrderApi* | [**postOrdersByIdRefund**](docs/OrderApi.md#postordersbyidrefund) | **POST** /orders/{id}/refund | Refund order
*TransferApi* | [**getWithdraws**](docs/TransferApi.md#getwithdraws) | **GET** /withdraws/ | List withdrawals
*TransferApi* | [**getWithdrawsById**](docs/TransferApi.md#getwithdrawsbyid) | **GET** /withdraws/{id} | Get withdrawal by ID
*TransferApi* | [**postWithdraws**](docs/TransferApi.md#postwithdraws) | **POST** /withdraws/ | Create withdrawal


### Documentation For Models

 - [BankSlip](docs/BankSlip.md)
 - [BankSlipExpirationInDays](docs/BankSlipExpirationInDays.md)
 - [CompleteCardData](docs/CompleteCardData.md)
 - [CompleteCardDataExpiration](docs/CompleteCardDataExpiration.md)
 - [CreditCard](docs/CreditCard.md)
 - [CreditCardCard](docs/CreditCardCard.md)
 - [CreditCardInstallments](docs/CreditCardInstallments.md)
 - [Customer](docs/Customer.md)
 - [Customer1](docs/Customer1.md)
 - [Customer2](docs/Customer2.md)
 - [Customer2DocumentType](docs/Customer2DocumentType.md)
 - [CustomerAddress](docs/CustomerAddress.md)
 - [MerchantInput](docs/MerchantInput.md)
 - [NuPay](docs/NuPay.md)
 - [NuPayNuPay](docs/NuPayNuPay.md)
 - [PicPay](docs/PicPay.md)
 - [Pix](docs/Pix.md)
 - [PixExpirationInSeconds](docs/PixExpirationInSeconds.md)
 - [PostCardTokenization200Response](docs/PostCardTokenization200Response.md)
 - [PostCardTokenizationRequest](docs/PostCardTokenizationRequest.md)
 - [PostCardTokenizationRequestCustomer](docs/PostCardTokenizationRequestCustomer.md)
 - [PostCardTokenizationRequestCustomerAnyOf](docs/PostCardTokenizationRequestCustomerAnyOf.md)
 - [PostOrders200Response](docs/PostOrders200Response.md)
 - [PostOrders200ResponseBankSlip](docs/PostOrders200ResponseBankSlip.md)
 - [PostOrders200ResponseCreditCard](docs/PostOrders200ResponseCreditCard.md)
 - [PostOrders200ResponseNuPay](docs/PostOrders200ResponseNuPay.md)
 - [PostOrders200ResponseOrderItemsInner](docs/PostOrders200ResponseOrderItemsInner.md)
 - [PostOrders200ResponsePicPay](docs/PostOrders200ResponsePicPay.md)
 - [PostOrders200ResponsePix](docs/PostOrders200ResponsePix.md)
 - [PostOrders200ResponseSession](docs/PostOrders200ResponseSession.md)
 - [PostOrdersRequest](docs/PostOrdersRequest.md)
 - [PostOrdersRequestFingerprints](docs/PostOrdersRequestFingerprints.md)
 - [PostOrdersRequestItemsInner](docs/PostOrdersRequestItemsInner.md)
 - [PostOrdersRequestPayment](docs/PostOrdersRequestPayment.md)
 - [PostOrdersRequestSession](docs/PostOrdersRequestSession.md)
 - [PostWithdraws200Response](docs/PostWithdraws200Response.md)
 - [PostWithdraws200ResponsePayedAt](docs/PostWithdraws200ResponsePayedAt.md)
 - [PostWithdraws200ResponsePayoutAccount](docs/PostWithdraws200ResponsePayoutAccount.md)
 - [PostWithdrawsRequest](docs/PostWithdrawsRequest.md)
 - [PostWithdrawsRequestPayoutAccount](docs/PostWithdrawsRequestPayoutAccount.md)
 - [TokenizedCard](docs/TokenizedCard.md)


<a id="documentation-for-authorization"></a>
## Documentation For Authorization


Authentication schemes defined for the API:
<a id="basicAuth"></a>
### basicAuth

- **Type**: HTTP basic authentication

