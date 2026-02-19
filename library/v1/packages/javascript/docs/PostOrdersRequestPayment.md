# PayconductorSdk.PostOrdersRequestPayment

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
**availablePaymentMethods** | [**[AvailablePaymentMethods]**](AvailablePaymentMethods.md) | Available payment methods for this order | [optional] 


