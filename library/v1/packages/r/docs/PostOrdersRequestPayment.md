# payconductor_sdk::PostOrdersRequestPayment

Payment data for the order (Pix, Credit Card, Bank Slip, NuPay, etc...)

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**paymentMethod** | [**PaymentMethod**](PaymentMethod.md) |  | [Enum: ] 
**expirationInSeconds** | [**DraftExpirationInSeconds**](Draft_expirationInSeconds.md) |  | [optional] 
**card** | [**CreditCardCard**](CreditCard_card.md) |  | 
**installments** | [**CreditCardInstallments**](CreditCard_installments.md) |  | 
**softDescriptor** | **character** | Text that will appear on the card statement (soft descriptor) | [optional] [Max. length: 22] [Min. length: 1] 
**expirationInDays** | [**BankSlipExpirationInDays**](BankSlip_expirationInDays.md) |  | [optional] 
**nuPay** | [**NuPayNuPay**](NuPay_nuPay.md) |  | 
**availablePaymentMethods** | [**array[AvailablePaymentMethods]**](AvailablePaymentMethods.md) | Available payment methods for this order | [optional] 


