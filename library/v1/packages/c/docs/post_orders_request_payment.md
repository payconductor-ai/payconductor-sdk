# post_orders_request_payment_t

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_method** | **char \*** |  | 
**expiration_in_seconds** | [**draft_expiration_in_seconds_t**](draft_expiration_in_seconds.md) \* |  | [optional] 
**card** | [**credit_card_card_t**](credit_card_card.md) \* |  | 
**installments** | [**credit_card_installments_t**](credit_card_installments.md) \* |  | 
**soft_descriptor** | **char \*** | Text that will appear on the card statement (soft descriptor) | [optional] 
**expiration_in_days** | [**bank_slip_expiration_in_days_t**](bank_slip_expiration_in_days.md) \* |  | [optional] 
**nu_pay** | [**nu_pay_nu_pay_t**](nu_pay_nu_pay.md) \* |  | 
**available_payment_methods** | [**list_t**](draft_available_payment_methods_inner.md) \* | Available payment methods for this order | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


