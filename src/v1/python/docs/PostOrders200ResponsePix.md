# PostOrders200ResponsePix

Dados do PIX

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**copy_and_paste_code** | **str** | Código copia e cola do PIX | 
**qr_code_url** | **str** | URL da imagem do QR Code PIX | 
**end_to_end_id** | **str** | E2E ID do PIX | 

## Example

```python
from openapi_client.models.post_orders200_response_pix import PostOrders200ResponsePix

# TODO update the JSON string below
json = "{}"
# create an instance of PostOrders200ResponsePix from a JSON string
post_orders200_response_pix_instance = PostOrders200ResponsePix.from_json(json)
# print the JSON string representation of the object
print(PostOrders200ResponsePix.to_json())

# convert the object into a dict
post_orders200_response_pix_dict = post_orders200_response_pix_instance.to_dict()
# create an instance of PostOrders200ResponsePix from a dict
post_orders200_response_pix_from_dict = PostOrders200ResponsePix.from_dict(post_orders200_response_pix_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


