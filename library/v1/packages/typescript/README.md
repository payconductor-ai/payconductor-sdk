## @payconductor/sdk@1.0.0

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
npm install @payconductor/sdk@1.0.0 --save
```

_unPublished (not recommended):_

```
npm install PATH_TO_GENERATED_PACKAGE --save
```

### Documentation for API Endpoints

All URIs are relative to *https://app.payconductor.ai/api/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CardTokenizationApi* | [**cardTokenize**](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/CardTokenizationApi.md#cardtokenize) | **POST** /card-tokenization/ | Tokenize Card
*CustomerApi* | [**customerCreate**](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/CustomerApi.md#customercreate) | **POST** /customers/ | Create New Customer
*CustomerApi* | [**customerListCustom**](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/CustomerApi.md#customerlistcustom) | **GET** /customers/ | Get All Customers
*CustomerApi* | [**customerRead**](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/CustomerApi.md#customerread) | **GET** /customers/{id} | Get Customer By ID
*CustomerApi* | [**customerUpdate**](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/CustomerApi.md#customerupdate) | **PATCH** /customers/{id} | Update Customer Data
*DefaultApi* | [**getSdkSettingsPaymentMethods**](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/DefaultApi.md#getsdksettingspaymentmethods) | **GET** /sdk/settings/payment-methods | 
*OrderApi* | [**orderConfirm**](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderApi.md#orderconfirm) | **POST** /orders/{id}/confirm | Confirm Order
*OrderApi* | [**orderCreate**](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderApi.md#ordercreate) | **POST** /orders/ | Create Order
*OrderApi* | [**orderList**](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderApi.md#orderlist) | **GET** /orders/ | List Orders
*OrderApi* | [**orderRead**](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderApi.md#orderread) | **GET** /orders/{id} | Get Order By ID
*OrderApi* | [**orderRefund**](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderApi.md#orderrefund) | **POST** /orders/{id}/refund | Refund Order
*WithdrawApi* | [**withdrawCreate**](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/WithdrawApi.md#withdrawcreate) | **POST** /withdraws/ | Create Withdrawal
*WithdrawApi* | [**withdrawList**](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/WithdrawApi.md#withdrawlist) | **GET** /withdraws/ | List Withdrawals
*WithdrawApi* | [**withdrawRead**](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/WithdrawApi.md#withdrawread) | **GET** /withdraws/{id} | Get Withdrawal By ID


### Documentation For Models

 - [AddressCreateRequest](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/AddressCreateRequest.md)
 - [AvailablePaymentMethods](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/AvailablePaymentMethods.md)
 - [CardCreateRequest](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/CardCreateRequest.md)
 - [CardExpirationData](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/CardExpirationData.md)
 - [CardTokenizationCreateRequest](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/CardTokenizationCreateRequest.md)
 - [CardTokenizationCreateRequestCustomer](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/CardTokenizationCreateRequestCustomer.md)
 - [CardTokenizationCreateResponse](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/CardTokenizationCreateResponse.md)
 - [CardTokenizationCustomerByIdData](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/CardTokenizationCustomerByIdData.md)
 - [CustomerAddressResponse](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/CustomerAddressResponse.md)
 - [CustomerCreateRequest](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/CustomerCreateRequest.md)
 - [CustomerListPagination](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/CustomerListPagination.md)
 - [CustomerListResponse](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/CustomerListResponse.md)
 - [CustomerReadResponse](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/CustomerReadResponse.md)
 - [CustomerUpdateRequest](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/CustomerUpdateRequest.md)
 - [DocumentType](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/DocumentType.md)
 - [Event](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/Event.md)
 - [MerchantInput](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/MerchantInput.md)
 - [OrderBankSlipInfo](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderBankSlipInfo.md)
 - [OrderBankSlipPaymentRequest](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderBankSlipPaymentRequest.md)
 - [OrderConfirmResponse](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderConfirmResponse.md)
 - [OrderCreateRequest](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderCreateRequest.md)
 - [OrderCreateRequestSession](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderCreateRequestSession.md)
 - [OrderCreateResponse](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderCreateResponse.md)
 - [OrderCreateResponseOrderItemsInner](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderCreateResponseOrderItemsInner.md)
 - [OrderCreateResponseSession](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderCreateResponseSession.md)
 - [OrderCreditCardInfo](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderCreditCardInfo.md)
 - [OrderCreditCardPaymentRequest](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderCreditCardPaymentRequest.md)
 - [OrderCreditCardPaymentRequestCard](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderCreditCardPaymentRequestCard.md)
 - [OrderDraftPaymentRequest](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderDraftPaymentRequest.md)
 - [OrderFraudFingerprints](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderFraudFingerprints.md)
 - [OrderItemData](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderItemData.md)
 - [OrderNuPayInfo](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderNuPayInfo.md)
 - [OrderNuPayPaymentRequest](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderNuPayPaymentRequest.md)
 - [OrderNuPayPaymentRequestNuPay](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderNuPayPaymentRequestNuPay.md)
 - [OrderPIXInfo](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderPIXInfo.md)
 - [OrderPIXPaymentRequest](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderPIXPaymentRequest.md)
 - [OrderPaymentRequest](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderPaymentRequest.md)
 - [OrderPicPayInfo](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderPicPayInfo.md)
 - [OrderPicPayPaymentRequest](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderPicPayPaymentRequest.md)
 - [OrderTokenizedCardData](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderTokenizedCardData.md)
 - [PaymentMethod](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/PaymentMethod.md)
 - [PixType](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/PixType.md)
 - [Status](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/Status.md)
 - [WithdrawCreateRequest](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/WithdrawCreateRequest.md)
 - [WithdrawCreateResponse](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/WithdrawCreateResponse.md)
 - [WithdrawCreateResponsePayedAt](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/WithdrawCreateResponsePayedAt.md)
 - [WithdrawCreateResponsePayoutAccount](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/WithdrawCreateResponsePayoutAccount.md)
 - [WithdrawPayoutAccountData](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/WithdrawPayoutAccountData.md)


<a id="documentation-for-authorization"></a>
## Documentation For Authorization


Authentication schemes defined for the API:
<a id="basicAuth"></a>
### basicAuth

- **Type**: HTTP basic authentication

