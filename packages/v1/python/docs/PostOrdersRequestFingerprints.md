# PostOrdersRequestFingerprints


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**threat_metrix_fingerprint_id** | **str** | ThreatMetrix fingerprint ID for fraud analysis | [optional] 

## Example

```python
from payconductor-sdk.models.post_orders_request_fingerprints import PostOrdersRequestFingerprints

# TODO update the JSON string below
json = "{}"
# create an instance of PostOrdersRequestFingerprints from a JSON string
post_orders_request_fingerprints_instance = PostOrdersRequestFingerprints.from_json(json)
# print the JSON string representation of the object
print(PostOrdersRequestFingerprints.to_json())

# convert the object into a dict
post_orders_request_fingerprints_dict = post_orders_request_fingerprints_instance.to_dict()
# create an instance of PostOrdersRequestFingerprints from a dict
post_orders_request_fingerprints_from_dict = PostOrdersRequestFingerprints.from_dict(post_orders_request_fingerprints_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


