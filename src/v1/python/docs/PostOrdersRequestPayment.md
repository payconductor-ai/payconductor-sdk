# PostOrdersRequestPayment

Dados de pagamento para o pedido (Pix, Cartão de Crédito, Boleto, NuPay, etc...)

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_method** | **str** |  | 
**expiration_in_seconds** | [**PixExpirationInSeconds**](PixExpirationInSeconds.md) |  | [optional] 
**card** | [**CartODeCrDitoCard**](CartODeCrDitoCard.md) |  | 
**installments** | [**CartODeCrDitoInstallments**](CartODeCrDitoInstallments.md) |  | 
**soft_descriptor** | **str** | Texto que aparecerá na fatura do cartão (soft descriptor) | [optional] 
**expiration_in_days** | [**BoletoExpirationInDays**](BoletoExpirationInDays.md) |  | [optional] 
**nu_pay** | [**NuPayNuPay**](NuPayNuPay.md) |  | 

## Example

```python
from openapi_client.models.post_orders_request_payment import PostOrdersRequestPayment

# TODO update the JSON string below
json = "{}"
# create an instance of PostOrdersRequestPayment from a JSON string
post_orders_request_payment_instance = PostOrdersRequestPayment.from_json(json)
# print the JSON string representation of the object
print(PostOrdersRequestPayment.to_json())

# convert the object into a dict
post_orders_request_payment_dict = post_orders_request_payment_instance.to_dict()
# create an instance of PostOrdersRequestPayment from a dict
post_orders_request_payment_from_dict = PostOrdersRequestPayment.from_dict(post_orders_request_payment_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


