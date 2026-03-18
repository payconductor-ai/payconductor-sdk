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

All URIs are relative to *http://localhost:5173/api/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CardTokenizationApi* | [**cardTokenize**](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/CardTokenizationApi.md#cardtokenize) | **POST** /card-tokenization/ | Tokenize Card
*CustomerApi* | [**customerCreate**](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/CustomerApi.md#customercreate) | **POST** /customers/ | Create New Customer
*CustomerApi* | [**customerListCustom**](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/CustomerApi.md#customerlistcustom) | **GET** /customers/ | Get All Customers
*CustomerApi* | [**customerRead**](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/CustomerApi.md#customerread) | **GET** /customers/{id} | Get Customer By ID
*CustomerApi* | [**customerUpdate**](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/CustomerApi.md#customerupdate) | **PATCH** /customers/{id} | Update Customer Data
*MerchantApi* | [**getMerchants**](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/MerchantApi.md#getmerchants) | **GET** /merchants/ | List Merchants
*MerchantApi* | [**getMerchantsById**](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/MerchantApi.md#getmerchantsbyid) | **GET** /merchants/{id} | Get Merchant By ID
*MerchantApi* | [**postMerchants**](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/MerchantApi.md#postmerchants) | **POST** /merchants/ | Create Merchant
*MerchantApi* | [**postMerchantsByIdFlows**](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/MerchantApi.md#postmerchantsbyidflows) | **POST** /merchants/{id}/flows | Configure Merchant Flows
*MerchantApi* | [**postMerchantsByIdSubaccounts**](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/MerchantApi.md#postmerchantsbyidsubaccounts) | **POST** /merchants/{id}/subaccounts | Update Merchant Subaccounts
*OrderApi* | [**orderConfirm**](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderApi.md#orderconfirm) | **POST** /orders/{id}/confirm | Confirm Order
*OrderApi* | [**orderCreate**](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderApi.md#ordercreate) | **POST** /orders/ | Create Order
*OrderApi* | [**orderList**](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderApi.md#orderlist) | **GET** /orders/ | List Orders
*OrderApi* | [**orderRead**](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderApi.md#orderread) | **GET** /orders/{id} | Get Order By ID
*OrderApi* | [**orderRefund**](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderApi.md#orderrefund) | **POST** /orders/{id}/refund | Refund Order
*WithdrawApi* | [**withdrawCreate**](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/WithdrawApi.md#withdrawcreate) | **POST** /withdraws/ | Create Withdrawal
*WithdrawApi* | [**withdrawList**](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/WithdrawApi.md#withdrawlist) | **GET** /withdraws/ | List Withdrawals
*WithdrawApi* | [**withdrawRead**](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/WithdrawApi.md#withdrawread) | **GET** /withdraws/{id} | Get Withdrawal By ID


### Documentation For Models

 - [Acquirer](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/Acquirer.md)
 - [AddressCreateRequest](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/AddressCreateRequest.md)
 - [AddressCreateRequest1](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/AddressCreateRequest1.md)
 - [ApplePay](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/ApplePay.md)
 - [ApplePayApplePay](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/ApplePayApplePay.md)
 - [ApplePayApplePayHeader](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/ApplePayApplePayHeader.md)
 - [BrowserInformation](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/BrowserInformation.md)
 - [CardCreateRequest](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/CardCreateRequest.md)
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
 - [Expiration](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/Expiration.md)
 - [External3DSAuthentication](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/External3DSAuthentication.md)
 - [Internal3DSAuthentication](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/Internal3DSAuthentication.md)
 - [Merchant](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/Merchant.md)
 - [MerchantBusiness](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/MerchantBusiness.md)
 - [MerchantData](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/MerchantData.md)
 - [MerchantFinancialRules](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/MerchantFinancialRules.md)
 - [MerchantFinancialRulesFeesInner](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/MerchantFinancialRulesFeesInner.md)
 - [MerchantFinancialRulesFeesInnerItemsInner](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/MerchantFinancialRulesFeesInnerItemsInner.md)
 - [MerchantFlow](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/MerchantFlow.md)
 - [MerchantOwner](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/MerchantOwner.md)
 - [MerchantPayoutAccount](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/MerchantPayoutAccount.md)
 - [MerchantPayoutAccountChecking](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/MerchantPayoutAccountChecking.md)
 - [MerchantPayoutAccountPix](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/MerchantPayoutAccountPix.md)
 - [MerchantResponse](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/MerchantResponse.md)
 - [MerchantResponseBussiness](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/MerchantResponseBussiness.md)
 - [MerchantResponseFinancialRules](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/MerchantResponseFinancialRules.md)
 - [MerchantResponseOwner](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/MerchantResponseOwner.md)
 - [MerchantResponsePayoutAccounts](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/MerchantResponsePayoutAccounts.md)
 - [MerchantResponsePayoutAccountsChecking](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/MerchantResponsePayoutAccountsChecking.md)
 - [MerchantResponsePayoutAccountsPix](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/MerchantResponsePayoutAccountsPix.md)
 - [MerchantResponseSubaccountsInner](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/MerchantResponseSubaccountsInner.md)
 - [OrderBankSlipInfo](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderBankSlipInfo.md)
 - [OrderBankSlipPaymentRequest](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderBankSlipPaymentRequest.md)
 - [OrderConfirmResponse](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderConfirmResponse.md)
 - [OrderCreateRequest](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderCreateRequest.md)
 - [OrderCreateRequestSession](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderCreateRequestSession.md)
 - [OrderCreateResponse](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderCreateResponse.md)
 - [OrderCreateResponseSession](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderCreateResponseSession.md)
 - [OrderCreateResponseThreeDSecure](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderCreateResponseThreeDSecure.md)
 - [OrderCreditCardInfo](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderCreditCardInfo.md)
 - [OrderCreditCardPaymentRequest](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderCreditCardPaymentRequest.md)
 - [OrderCreditCardPaymentRequestCard](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderCreditCardPaymentRequestCard.md)
 - [OrderCreditCardPaymentRequestThreeDSecure](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderCreditCardPaymentRequestThreeDSecure.md)
 - [OrderDraftPaymentRequest](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderDraftPaymentRequest.md)
 - [OrderFraudFingerprints](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderFraudFingerprints.md)
 - [OrderGooglePayPaymentRequest](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderGooglePayPaymentRequest.md)
 - [OrderGooglePayPaymentRequestGooglePay](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderGooglePayPaymentRequestGooglePay.md)
 - [OrderGooglePayPaymentRequestGooglePayIntermediateSigningKey](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderGooglePayPaymentRequestGooglePayIntermediateSigningKey.md)
 - [OrderItemData](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderItemData.md)
 - [OrderItemsInner](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderItemsInner.md)
 - [OrderNuPayInfo](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderNuPayInfo.md)
 - [OrderNuPayPaymentRequest](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderNuPayPaymentRequest.md)
 - [OrderNuPayPaymentRequestNuPay](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderNuPayPaymentRequestNuPay.md)
 - [OrderPIXInfo](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderPIXInfo.md)
 - [OrderPIXPaymentRequest](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderPIXPaymentRequest.md)
 - [OrderPaymentRequest](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderPaymentRequest.md)
 - [OrderPicPayInfo](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderPicPayInfo.md)
 - [OrderPicPayPaymentRequest](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderPicPayPaymentRequest.md)
 - [OrderRoutingData](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderRoutingData.md)
 - [OrderSplitDataInner](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderSplitDataInner.md)
 - [OrderTokenizedCardData](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/OrderTokenizedCardData.md)
 - [PaymentMethod](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/PaymentMethod.md)
 - [PersonType](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/PersonType.md)
 - [PixType](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/PixType.md)
 - [PostMerchantsByIdSubaccounts200Response](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/PostMerchantsByIdSubaccounts200Response.md)
 - [ReceiverType](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/ReceiverType.md)
 - [Status](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/Status.md)
 - [Type](https://github.com/payconductor-ai/payconductor-sdk/blob/main/library/v1/packages/typescript/docs/Type.md)
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

