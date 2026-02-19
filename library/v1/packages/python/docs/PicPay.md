# PicPay


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_method** | **str** |  | 

## Example

```python
from payconductor_sdk.models.pic_pay import PicPay

# TODO update the JSON string below
json = "{}"
# create an instance of PicPay from a JSON string
pic_pay_instance = PicPay.from_json(json)
# print the JSON string representation of the object
print(PicPay.to_json())

# convert the object into a dict
pic_pay_dict = pic_pay_instance.to_dict()
# create an instance of PicPay from a dict
pic_pay_from_dict = PicPay.from_dict(pic_pay_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


