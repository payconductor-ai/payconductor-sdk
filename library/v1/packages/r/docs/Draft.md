# payconductor_sdk::Draft

Used to create an order without generating a real payment. Use to create orders that will be paid later

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**paymentMethod** | [**PaymentMethod**](PaymentMethod.md) |  | [Enum: ] 
**expirationInSeconds** | [**DraftExpirationInSeconds**](Draft_expirationInSeconds.md) |  | [optional] 
**availablePaymentMethods** | [**array[AvailablePaymentMethods]**](AvailablePaymentMethods.md) | Available payment methods for this order | [optional] 


