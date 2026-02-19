# payconductor_sdk::Draft

Used to create an order without generating a real payment. Use to create orders that will be paid later

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**paymentMethod** | **character** |  | 
**expirationInSeconds** | [**DraftExpirationInSeconds**](Draft_expirationInSeconds.md) |  | [optional] 
**availablePaymentMethods** | [**array[DraftAvailablePaymentMethodsInner]**](Draft_availablePaymentMethods_inner.md) | Available payment methods for this order | [optional] 


