# # PostOrdersRequestPayment

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_method** | **string** |  |
**expiration_in_seconds** | [**\OpenAPI\Client\Model\DraftExpirationInSeconds**](DraftExpirationInSeconds.md) |  | [optional]
**card** | [**\OpenAPI\Client\Model\CreditCardCard**](CreditCardCard.md) |  |
**installments** | [**\OpenAPI\Client\Model\CreditCardInstallments**](CreditCardInstallments.md) |  |
**soft_descriptor** | **string** | Text that will appear on the card statement (soft descriptor) | [optional]
**expiration_in_days** | [**\OpenAPI\Client\Model\BankSlipExpirationInDays**](BankSlipExpirationInDays.md) |  | [optional]
**nu_pay** | [**\OpenAPI\Client\Model\NuPayNuPay**](NuPayNuPay.md) |  |
**available_payment_methods** | [**\OpenAPI\Client\Model\DraftAvailablePaymentMethodsInner[]**](DraftAvailablePaymentMethodsInner.md) | Available payment methods for this order | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
