# WWW::OpenAPIClient::Object::PostOrdersRequestPayment

## Load the model package
```perl
use WWW::OpenAPIClient::Object::PostOrdersRequestPayment;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_method** | **string** |  | 
**expiration_in_seconds** | [**PixExpirationInSeconds**](PixExpirationInSeconds.md) |  | [optional] 
**card** | [**CreditCardCard**](CreditCardCard.md) |  | 
**installments** | [**CreditCardInstallments**](CreditCardInstallments.md) |  | 
**soft_descriptor** | **string** | Text that will appear on the card statement (soft descriptor) | [optional] 
**expiration_in_days** | [**BankSlipExpirationInDays**](BankSlipExpirationInDays.md) |  | [optional] 
**nu_pay** | [**NuPayNuPay**](NuPayNuPay.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


