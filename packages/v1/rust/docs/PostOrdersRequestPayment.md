# PostOrdersRequestPayment

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_method** | **String** |  | 
**expiration_in_seconds** | Option<[**models::PixExpirationInSeconds**](PixExpirationInSeconds.md)> |  | [optional]
**card** | [**models::CreditCardCard**](CreditCardCard.md) |  | 
**installments** | [**models::CreditCardInstallments**](CreditCardInstallments.md) |  | 
**soft_descriptor** | Option<**String**> | Text that will appear on the card statement (soft descriptor) | [optional]
**expiration_in_days** | Option<[**models::BankSlipExpirationInDays**](BankSlipExpirationInDays.md)> |  | [optional]
**nu_pay** | [**models::NuPayNuPay**](NuPayNuPay.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


