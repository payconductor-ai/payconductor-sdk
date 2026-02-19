# post_orders_200_response_t

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **char \*** | Order ID in the system | 
**external_id** | **char \*** | External order ID (provided by your integration) | 
**external_integration_key** | **char \*** | Provider used to process the order | 
**external_integration_id** | **char \*** | Order ID in the payment provider | 
**amount** | **double** | Total order amount | 
**cost_fee** | **double** | Cost fee applied to the order | 
**pix** | [**post_orders_200_response_pix_t**](post_orders_200_response_pix.md) \* |  | [optional] 
**bank_slip** | [**post_orders_200_response_bank_slip_t**](post_orders_200_response_bank_slip.md) \* |  | [optional] 
**nu_pay** | [**post_orders_200_response_nu_pay_t**](post_orders_200_response_nu_pay.md) \* |  | [optional] 
**pic_pay** | [**post_orders_200_response_pic_pay_t**](post_orders_200_response_pic_pay.md) \* |  | [optional] 
**credit_card** | [**post_orders_200_response_credit_card_t**](post_orders_200_response_credit_card.md) \* |  | [optional] 
**status** | **status_t \*** |  | 
**payment_method** | **payment_method_t \*** |  | 
**payed_at** | **char \*** | Date and time when the order was paid (ISO 8601) | 
**error_code** | **char \*** | Error code, if any | 
**error_message** | **char \*** | Error message, if any | 
**order_items** | [**list_t**](post_orders_200_response_order_items_inner.md) \* |  | 
**session** | [**post_orders_200_response_session_t**](post_orders_200_response_session.md) \* |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


