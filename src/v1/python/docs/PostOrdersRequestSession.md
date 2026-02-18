# PostOrdersRequestSession

Caso o externalSessionId ou sessionId sejam fornecidos e houver uma sessão existente, ela será atualizada com os novos dados. Caso contrário, uma nova sessão será criada.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**expires_in_minutes** | **float** | Tempo em minutos para expiração da sessão do checkout | [optional] [default to 30]
**checkout_url** | **str** | URL do checkout para que possamos redirecionar | [optional] 
**session_id** | **str** | Id gerado pelo nosso serviço para identificar a sessão de checkout | [optional] 
**external_session_id** | **str** | Id da sessão de checkout gerado pelo lado do cliente. O id deve ser único para cada sessão de carrinho | [optional] 

## Example

```python
from openapi_client.models.post_orders_request_session import PostOrdersRequestSession

# TODO update the JSON string below
json = "{}"
# create an instance of PostOrdersRequestSession from a JSON string
post_orders_request_session_instance = PostOrdersRequestSession.from_json(json)
# print the JSON string representation of the object
print(PostOrdersRequestSession.to_json())

# convert the object into a dict
post_orders_request_session_dict = post_orders_request_session_instance.to_dict()
# create an instance of PostOrdersRequestSession from a dict
post_orders_request_session_from_dict = PostOrdersRequestSession.from_dict(post_orders_request_session_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


