# PostOrdersByIdConfirm200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Order ID in the system | 
**external_id** | **str** | External order ID (provided by your integration) | 
**amount** | **float** | Total order amount | 
**cost_fee** | **float** | Cost fee applied to the order | 
**pix** | [**PostOrders200ResponsePix**](PostOrders200ResponsePix.md) |  | [optional] 
**bank_slip** | [**PostOrders200ResponseBankSlip**](PostOrders200ResponseBankSlip.md) |  | [optional] 
**nu_pay** | [**PostOrders200ResponseNuPay**](PostOrders200ResponseNuPay.md) |  | [optional] 
**pic_pay** | [**PostOrders200ResponsePicPay**](PostOrders200ResponsePicPay.md) |  | [optional] 
**status** | [**Status**](Status.md) |  | 
**payment_method** | [**PaymentMethod**](PaymentMethod.md) |  | 
**payed_at** | **str** | Date and time when the order was paid (ISO 8601) | 
**error_code** | **str** | Error code, if any | 
**error_message** | **str** | Error message, if any | 

## Example

```python
from payconductor_sdk.models.post_orders_by_id_confirm200_response import PostOrdersByIdConfirm200Response

# TODO update the JSON string below
json = "{}"
# create an instance of PostOrdersByIdConfirm200Response from a JSON string
post_orders_by_id_confirm200_response_instance = PostOrdersByIdConfirm200Response.from_json(json)
# print the JSON string representation of the object
print(PostOrdersByIdConfirm200Response.to_json())

# convert the object into a dict
post_orders_by_id_confirm200_response_dict = post_orders_by_id_confirm200_response_instance.to_dict()
# create an instance of PostOrdersByIdConfirm200Response from a dict
post_orders_by_id_confirm200_response_from_dict = PostOrdersByIdConfirm200Response.from_dict(post_orders_by_id_confirm200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


