# PostOrdersRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**charge_amount** | **float** | Valor total a ser cobrado no pedido em valor flutuante | 
**client_ip** | **str** | Endereço IP do cliente | 
**customer** | [**Cliente**](Cliente.md) |  | 
**discount_amount** | **float** | Valor do desconto | [default to 0]
**external_id** | **str** | ID da ordem no seu sistema | 
**fingerprints** | [**PostOrdersRequestFingerprints**](PostOrdersRequestFingerprints.md) |  | [optional] 
**items** | [**List[PostOrdersRequestItemsInner]**](PostOrdersRequestItemsInner.md) | Lista de produtos ou serviços do pedido | [optional] 
**merchant** | [**MerchantInput**](MerchantInput.md) |  | [optional] 
**payment** | [**PostOrdersRequestPayment**](PostOrdersRequestPayment.md) |  | 
**split_amount_total** | **float** | Valor total do split a ser pago ao merchant (Sendo usado apenas para fins de relatório, ou seja não gera split real) | [optional] 
**session** | [**PostOrdersRequestSession**](PostOrdersRequestSession.md) |  | [optional] 
**shipping_fee** | **float** | Valor do frete | [default to 0]
**tax_fee** | **float** | Taxas adicionais | [default to 0]
**metadata** | **object** | Metadados adicionais para o pedido como pares chave-valor. Não deve ter espaços ou caracteres especiais nas chaves | [optional] 

## Example

```python
from openapi_client.models.post_orders_request import PostOrdersRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PostOrdersRequest from a JSON string
post_orders_request_instance = PostOrdersRequest.from_json(json)
# print the JSON string representation of the object
print(PostOrdersRequest.to_json())

# convert the object into a dict
post_orders_request_dict = post_orders_request_instance.to_dict()
# create an instance of PostOrdersRequest from a dict
post_orders_request_from_dict = PostOrdersRequest.from_dict(post_orders_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


