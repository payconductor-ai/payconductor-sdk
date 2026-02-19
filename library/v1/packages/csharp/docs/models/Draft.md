# payconductor_sdk.Model.Draft
Used to create an order without generating a real payment. Use to create orders that will be paid later

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PaymentMethod** | **string** |  | 
**ExpirationInSeconds** | [**DraftExpirationInSeconds**](DraftExpirationInSeconds.md) |  | [optional] 
**AvailablePaymentMethods** | [**List&lt;DraftAvailablePaymentMethodsInner&gt;**](DraftAvailablePaymentMethodsInner.md) | Available payment methods for this order | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

