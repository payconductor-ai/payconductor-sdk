# openapi.model.PostOrdersRequestPayment

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**paymentMethod** | [**PaymentMethod**](PaymentMethod.md) |  | 
**expirationInSeconds** | [**DraftExpirationInSeconds**](DraftExpirationInSeconds.md) |  | [optional] 
**card** | [**CreditCardCard**](CreditCardCard.md) |  | 
**installments** | [**CreditCardInstallments**](CreditCardInstallments.md) |  | 
**softDescriptor** | **String** | Text that will appear on the card statement (soft descriptor) | [optional] 
**expirationInDays** | [**BankSlipExpirationInDays**](BankSlipExpirationInDays.md) |  | [optional] 
**nuPay** | [**NuPayNuPay**](NuPayNuPay.md) |  | 
**availablePaymentMethods** | [**BuiltList&lt;AvailablePaymentMethods&gt;**](AvailablePaymentMethods.md) | Available payment methods for this order | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


