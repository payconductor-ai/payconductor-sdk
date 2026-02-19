

# PostOrdersRequestPayment

Payment data for the order (Pix, Credit Card, Bank Slip, NuPay, etc...)

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**paymentMethod** | **PaymentMethod** |  |  |
|**expirationInSeconds** | [**DraftExpirationInSeconds**](DraftExpirationInSeconds.md) |  |  [optional] |
|**card** | [**CreditCardCard**](CreditCardCard.md) |  |  |
|**installments** | [**CreditCardInstallments**](CreditCardInstallments.md) |  |  |
|**softDescriptor** | **String** | Text that will appear on the card statement (soft descriptor) |  [optional] |
|**expirationInDays** | [**BankSlipExpirationInDays**](BankSlipExpirationInDays.md) |  |  [optional] |
|**nuPay** | [**NuPayNuPay**](NuPayNuPay.md) |  |  |
|**availablePaymentMethods** | **List&lt;AvailablePaymentMethods&gt;** | Available payment methods for this order |  [optional] |



