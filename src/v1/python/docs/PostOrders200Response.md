# PostOrders200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | ID do pedido no sistema | 
**external_id** | **str** | ID externo do pedido (fornecido pela sua integração) | 
**external_integration_key** | **str** | Provedor utilizada para processar o pedido | 
**external_integration_id** | **str** | ID do pedido no provedor de pagamento | 
**amount** | **float** | Valor total do pedido | 
**cost_fee** | **float** | Taxa de custo aplicada ao pedido | 
**pix** | [**PostOrders200ResponsePix**](PostOrders200ResponsePix.md) |  | [optional] 
**bank_slip** | [**PostOrders200ResponseBankSlip**](PostOrders200ResponseBankSlip.md) |  | [optional] 
**nu_pay** | [**PostOrders200ResponseNuPay**](PostOrders200ResponseNuPay.md) |  | [optional] 
**pic_pay** | [**PostOrders200ResponsePicPay**](PostOrders200ResponsePicPay.md) |  | [optional] 
**credit_card** | [**PostOrders200ResponseCreditCard**](PostOrders200ResponseCreditCard.md) |  | [optional] 
**status** | **str** |  | 
**payment_method** | **str** |  | 
**payed_at** | **str** | Data e hora em que o pedido foi pago (ISO 8601) | 
**error_code** | **str** | Código de erro, se houver | 
**error_message** | **str** | Mensagem de erro, se houver | 
**order_items** | [**List[PostOrders200ResponseOrderItemsInner]**](PostOrders200ResponseOrderItemsInner.md) |  | 
**session** | [**PostOrders200ResponseSession**](PostOrders200ResponseSession.md) |  | [optional] 

## Example

```python
from openapi_client.models.post_orders200_response import PostOrders200Response

# TODO update the JSON string below
json = "{}"
# create an instance of PostOrders200Response from a JSON string
post_orders200_response_instance = PostOrders200Response.from_json(json)
# print the JSON string representation of the object
print(PostOrders200Response.to_json())

# convert the object into a dict
post_orders200_response_dict = post_orders200_response_instance.to_dict()
# create an instance of PostOrders200Response from a dict
post_orders200_response_from_dict = PostOrders200Response.from_dict(post_orders200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


