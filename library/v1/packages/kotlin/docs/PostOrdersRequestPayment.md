
# PostOrdersRequestPayment

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **paymentMethod** | **kotlin.String** |  |  |
| **card** | [**CreditCardCard**](CreditCardCard.md) |  |  |
| **installments** | [**CreditCardInstallments**](CreditCardInstallments.md) |  |  |
| **nuPay** | [**NuPayNuPay**](NuPayNuPay.md) |  |  |
| **expirationInSeconds** | [**DraftExpirationInSeconds**](DraftExpirationInSeconds.md) |  |  [optional] |
| **softDescriptor** | **kotlin.String** | Text that will appear on the card statement (soft descriptor) |  [optional] |
| **expirationInDays** | [**BankSlipExpirationInDays**](BankSlipExpirationInDays.md) |  |  [optional] |
| **availablePaymentMethods** | [**kotlin.collections.List&lt;DraftAvailablePaymentMethodsInner&gt;**](DraftAvailablePaymentMethodsInner.md) | Available payment methods for this order |  [optional] |



