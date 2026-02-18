# post_orders_request_payment_t

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_method** | **char \*** |  | 
**expiration_in_seconds** | [**pix_expiration_in_seconds_t**](pix_expiration_in_seconds.md) \* |  | [optional] 
**card** | [**credit_card_card_t**](credit_card_card.md) \* |  | 
**installments** | [**credit_card_installments_t**](credit_card_installments.md) \* |  | 
**soft_descriptor** | **char \*** | Text that will appear on the card statement (soft descriptor) | [optional] 
**expiration_in_days** | [**bank_slip_expiration_in_days_t**](bank_slip_expiration_in_days.md) \* |  | [optional] 
**nu_pay** | [**nu_pay_nu_pay_t**](nu_pay_nu_pay.md) \* |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


