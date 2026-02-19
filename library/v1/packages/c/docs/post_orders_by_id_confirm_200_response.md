# post_orders_by_id_confirm_200_response_t

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **char \*** | Order ID in the system | 
**external_id** | **char \*** | External order ID (provided by your integration) | 
**amount** | **double** | Total order amount | 
**cost_fee** | **double** | Cost fee applied to the order | 
**pix** | [**post_orders_200_response_pix_t**](post_orders_200_response_pix.md) \* |  | [optional] 
**bank_slip** | [**post_orders_200_response_bank_slip_t**](post_orders_200_response_bank_slip.md) \* |  | [optional] 
**nu_pay** | [**post_orders_200_response_nu_pay_t**](post_orders_200_response_nu_pay.md) \* |  | [optional] 
**pic_pay** | [**post_orders_200_response_pic_pay_t**](post_orders_200_response_pic_pay.md) \* |  | [optional] 
**status** | **payconductor_api_post_orders_by_id_confirm_200_response_STATUS_e** |  | 
**payment_method** | **payconductor_api_post_orders_by_id_confirm_200_response_PAYMENTMETHOD_e** |  | 
**payed_at** | **char \*** | Date and time when the order was paid (ISO 8601) | 
**error_code** | **char \*** | Error code, if any | 
**error_message** | **char \*** | Error message, if any | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


