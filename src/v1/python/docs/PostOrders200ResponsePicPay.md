# PostOrders200ResponsePicPay


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**copy_and_paste_code** | **str** | Código copia e cola do PicPay | 
**qr_code_url** | **str** | URL da imagem do QR Code PicPay | 

## Example

```python
from openapi_client.models.post_orders200_response_pic_pay import PostOrders200ResponsePicPay

# TODO update the JSON string below
json = "{}"
# create an instance of PostOrders200ResponsePicPay from a JSON string
post_orders200_response_pic_pay_instance = PostOrders200ResponsePicPay.from_json(json)
# print the JSON string representation of the object
print(PostOrders200ResponsePicPay.to_json())

# convert the object into a dict
post_orders200_response_pic_pay_dict = post_orders200_response_pic_pay_instance.to_dict()
# create an instance of PostOrders200ResponsePicPay from a dict
post_orders200_response_pic_pay_from_dict = PostOrders200ResponsePicPay.from_dict(post_orders200_response_pic_pay_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


