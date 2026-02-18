# payconductor-sdk.CardTokenizationApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post_card_tokenization**](CardTokenizationApi.md#post_card_tokenization) | **POST** /card-tokenization/ | Tokenize card


# **post_card_tokenization**
> PostCardTokenization200Response post_card_tokenization(post_card_tokenization_request)

Tokenize card

Tokenize credit cards for future charges.

### Example

* Basic Authentication (basicAuth):

```python
import payconductor-sdk
from payconductor-sdk.models.post_card_tokenization200_response import PostCardTokenization200Response
from payconductor-sdk.models.post_card_tokenization_request import PostCardTokenizationRequest
from payconductor-sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.payconductor.ai/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = payconductor-sdk.Configuration(
    host = "https://app.payconductor.ai/api/v1"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = payconductor-sdk.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with payconductor-sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = payconductor-sdk.CardTokenizationApi(api_client)
    post_card_tokenization_request = payconductor-sdk.PostCardTokenizationRequest() # PostCardTokenizationRequest | Data for creating a customer card

    try:
        # Tokenize card
        api_response = api_instance.post_card_tokenization(post_card_tokenization_request)
        print("The response of CardTokenizationApi->post_card_tokenization:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CardTokenizationApi->post_card_tokenization: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post_card_tokenization_request** | [**PostCardTokenizationRequest**](PostCardTokenizationRequest.md)| Data for creating a customer card | 

### Return type

[**PostCardTokenization200Response**](PostCardTokenization200Response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Response for status 200 |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

