# PostWithdraws200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Identificador único do saque | 
**external_id** | **str** | ID do saque no sistema no seu sistema | 
**external_integration_key** | **str** | Chave do provedor utilizado para o saque | 
**external_integration_id** | **str** | ID do saque no provedor de pagamento | 
**cost_fee** | **float** | Taxa de custo aplicada ao saque | 
**status** | **str** | Status do saque | [default to 'Pending']
**error_code** | **str** | Código do erro, se houver | 
**error_message** | **str** | Mensagem descritiva do erro, se houver | 
**payed_at** | [**PostWithdraws200ResponsePayedAt**](PostWithdraws200ResponsePayedAt.md) |  | 
**payout_account** | [**PostWithdraws200ResponsePayoutAccount**](PostWithdraws200ResponsePayoutAccount.md) |  | 

## Example

```python
from openapi_client.models.post_withdraws200_response import PostWithdraws200Response

# TODO update the JSON string below
json = "{}"
# create an instance of PostWithdraws200Response from a JSON string
post_withdraws200_response_instance = PostWithdraws200Response.from_json(json)
# print the JSON string representation of the object
print(PostWithdraws200Response.to_json())

# convert the object into a dict
post_withdraws200_response_dict = post_withdraws200_response_instance.to_dict()
# create an instance of PostWithdraws200Response from a dict
post_withdraws200_response_from_dict = PostWithdraws200Response.from_dict(post_withdraws200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


