# PostOrdersRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**charge_amount** | **float** | Total amount to be charged on the order in floating point value | 
**client_ip** | **str** | Client IP address | 
**customer** | [**Customer**](Customer.md) |  | 
**discount_amount** | **float** | Discount amount | [default to 0]
**external_id** | **str** | Order ID in your system | 
**fingerprints** | [**PostOrdersRequestFingerprints**](PostOrdersRequestFingerprints.md) |  | [optional] 
**items** | [**List[PostOrdersRequestItemsInner]**](PostOrdersRequestItemsInner.md) | List of products or services in the order | [optional] 
**merchant** | [**MerchantInput**](MerchantInput.md) |  | [optional] 
**payment** | [**PostOrdersRequestPayment**](PostOrdersRequestPayment.md) |  | 
**split_amount_total** | **float** | Total split amount to be paid to the merchant (Used only for reporting purposes, does not generate actual split) | [optional] 
**session** | [**PostOrdersRequestSession**](PostOrdersRequestSession.md) |  | [optional] 
**shipping_fee** | **float** | Shipping fee | [default to 0]
**tax_fee** | **float** | Additional fees | [default to 0]
**metadata** | **object** | Additional metadata for the order as key-value pairs. Keys should not contain spaces or special characters | [optional] 

## Example

```python
from payconductor-sdk.models.post_orders_request import PostOrdersRequest

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


