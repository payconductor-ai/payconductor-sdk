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
*CustomersApi* | [**getCustomers**](docs/CustomersApi.md#getcustomers) | **GET** /customers/ | Get all customers
*CustomersApi* | [**getCustomersById**](docs/CustomersApi.md#getcustomersbyid) | **GET** /customers/{id} | Get customer by ID
*CustomersApi* | [**patchCustomersById**](docs/CustomersApi.md#patchcustomersbyid) | **PATCH** /customers/{id} | Update customer data
*CustomersApi* | [**postCustomers**](docs/CustomersApi.md#postcustomers) | **POST** /customers/ | Create new customer
*OrdersApi* | [**getOrders**](docs/OrdersApi.md#getorders) | **GET** /orders/ | List orders
*OrdersApi* | [**getOrdersById**](docs/OrdersApi.md#getordersbyid) | **GET** /orders/{id} | Get order by ID
*OrdersApi* | [**postOrders**](docs/OrdersApi.md#postorders) | **POST** /orders/ | Create order
*OrdersApi* | [**postOrdersByIdConfirm**](docs/OrdersApi.md#postordersbyidconfirm) | **POST** /orders/{id}/confirm | Confirm order
*OrdersApi* | [**postOrdersByIdRefund**](docs/OrdersApi.md#postordersbyidrefund) | **POST** /orders/{id}/refund | Refund order
*TransfersApi* | [**getWithdraws**](docs/TransfersApi.md#getwithdraws) | **GET** /withdraws/ | List withdrawals
*TransfersApi* | [**getWithdrawsById**](docs/TransfersApi.md#getwithdrawsbyid) | **GET** /withdraws/{id} | Get withdrawal by ID
*TransfersApi* | [**postWithdraws**](docs/TransfersApi.md#postwithdraws) | **POST** /withdraws/ | Create withdrawal


### Documentation For Models

 - [AvailablePaymentMethods](docs/AvailablePaymentMethods.md)
 - [BankSlipInfo](docs/BankSlipInfo.md)
 - [BankSlipPayment](docs/BankSlipPayment.md)
 - [CardExpiration](docs/CardExpiration.md)
 - [CreateCardData](docs/CreateCardData.md)
 - [CreateCustomerCard](docs/CreateCustomerCard.md)
 - [CreateCustomerCardCustomer](docs/CreateCustomerCardCustomer.md)
 - [CreateCustomerCardResponse](docs/CreateCustomerCardResponse.md)
 - [CreditCardInfo](docs/CreditCardInfo.md)
 - [CreditCardPayment](docs/CreditCardPayment.md)
 - [CreditCardPaymentCard](docs/CreditCardPaymentCard.md)
 - [Customer](docs/Customer.md)
 - [Customer1](docs/Customer1.md)
 - [CustomerAddress](docs/CustomerAddress.md)
 - [CustomerAddress1](docs/CustomerAddress1.md)
 - [CustomerByID](docs/CustomerByID.md)
 - [CustomerListResponse](docs/CustomerListResponse.md)
 - [CustomerPagination](docs/CustomerPagination.md)
 - [CustomerResponse](docs/CustomerResponse.md)
 - [DocumentType](docs/DocumentType.md)
 - [DraftPayment](docs/DraftPayment.md)
 - [Event](docs/Event.md)
 - [FraudFingerprints](docs/FraudFingerprints.md)
 - [MerchantInput](docs/MerchantInput.md)
 - [NuPayInfo](docs/NuPayInfo.md)
 - [NuPayPayment](docs/NuPayPayment.md)
 - [NuPayPaymentNuPay](docs/NuPayPaymentNuPay.md)
 - [Order](docs/Order.md)
 - [OrderItem](docs/OrderItem.md)
 - [OrderSession](docs/OrderSession.md)
 - [PIXInfo](docs/PIXInfo.md)
 - [PIXPayment](docs/PIXPayment.md)
 - [PaymentData](docs/PaymentData.md)
 - [PaymentMethod](docs/PaymentMethod.md)
 - [PayoutAccount](docs/PayoutAccount.md)
 - [PicPayInfo](docs/PicPayInfo.md)
 - [PicPayPayment](docs/PicPayPayment.md)
 - [PixType](docs/PixType.md)
 - [PostOrders200Response](docs/PostOrders200Response.md)
 - [PostOrders200ResponseOrderItemsInner](docs/PostOrders200ResponseOrderItemsInner.md)
 - [PostOrders200ResponseSession](docs/PostOrders200ResponseSession.md)
 - [PostOrdersByIdConfirm200Response](docs/PostOrdersByIdConfirm200Response.md)
 - [PostWithdraws200Response](docs/PostWithdraws200Response.md)
 - [PostWithdraws200ResponsePayedAt](docs/PostWithdraws200ResponsePayedAt.md)
 - [PostWithdraws200ResponsePayoutAccount](docs/PostWithdraws200ResponsePayoutAccount.md)
 - [Status](docs/Status.md)
 - [TokenizedCard](docs/TokenizedCard.md)
 - [UpdateCustomer](docs/UpdateCustomer.md)
 - [Withdraw](docs/Withdraw.md)


<a id="documentation-for-authorization"></a>
## Documentation For Authorization


Authentication schemes defined for the API:
<a id="basicAuth"></a>
### basicAuth

- **Type**: HTTP basic authentication

