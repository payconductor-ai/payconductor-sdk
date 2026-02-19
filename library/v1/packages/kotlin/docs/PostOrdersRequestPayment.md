
# PostOrdersRequestPayment

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **paymentMethod** | [**PaymentMethod**](PaymentMethod.md) |  |  |
| **card** | [**CreditCardCard**](CreditCardCard.md) |  |  |
| **installments** | [**CreditCardInstallments**](CreditCardInstallments.md) |  |  |
| **nuPay** | [**NuPayNuPay**](NuPayNuPay.md) |  |  |
| **expirationInSeconds** | [**DraftExpirationInSeconds**](DraftExpirationInSeconds.md) |  |  [optional] |
| **softDescriptor** | **kotlin.String** | Text that will appear on the card statement (soft descriptor) |  [optional] |
| **expirationInDays** | [**BankSlipExpirationInDays**](BankSlipExpirationInDays.md) |  |  [optional] |
| **availablePaymentMethods** | [**kotlin.collections.List&lt;AvailablePaymentMethods&gt;**](AvailablePaymentMethods.md) | Available payment methods for this order |  [optional] |



