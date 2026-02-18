# PostWithdraws200ResponsePayoutAccount


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Identificador único da conta de pagamento | 
**owner_document** | **str** | Documento do titular da conta (CPF ou CNPJ) | 
**owner_name** | **str** | Nome do titular da conta | 
**pix_key** | **str** | Chave PIX utilizada para o saque | 
**pix_type** | **str** | Tipo da chave PIX | [default to 'Cpf']

## Example

```python
from openapi_client.models.post_withdraws200_response_payout_account import PostWithdraws200ResponsePayoutAccount

# TODO update the JSON string below
json = "{}"
# create an instance of PostWithdraws200ResponsePayoutAccount from a JSON string
post_withdraws200_response_payout_account_instance = PostWithdraws200ResponsePayoutAccount.from_json(json)
# print the JSON string representation of the object
print(PostWithdraws200ResponsePayoutAccount.to_json())

# convert the object into a dict
post_withdraws200_response_payout_account_dict = post_withdraws200_response_payout_account_instance.to_dict()
# create an instance of PostWithdraws200ResponsePayoutAccount from a dict
post_withdraws200_response_payout_account_from_dict = PostWithdraws200ResponsePayoutAccount.from_dict(post_withdraws200_response_payout_account_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


