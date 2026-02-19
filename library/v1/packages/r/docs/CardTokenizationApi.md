# CardTokenizationApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**PostCardTokenization**](CardTokenizationApi.md#PostCardTokenization) | **POST** /card-tokenization/ | Tokenize card


# **PostCardTokenization**
> PostCardTokenization200Response PostCardTokenization(post_card_tokenization_request)

Tokenize card

Tokenize credit cards for future charges.

### Example
```R
library(payconductor_sdk)

# Tokenize card
#
# prepare function argument(s)
var_post_card_tokenization_request <- postCard_tokenization_request$new(Complete_card_data$new("cvv_example", Complete_card_data_expiration$new(123, 123), "holderName_example", "number_example"), "saveCard_example", postCard_tokenization_request_customer$new("documentNumber_example", DocumentType$new(), "email_example", "name_example", "id_example", Customer_address$new("city_example", "country_example", "neighborhood_example", "number_example", "state_example", "street_example", "zipCode_example"), "phoneNumber_example")) # PostCardTokenizationRequest | Data for creating a customer card

api_instance <- CardTokenizationApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PostCardTokenization(var_post_card_tokenization_requestdata_file = "result.txt")
result <- api_instance$PostCardTokenization(var_post_card_tokenization_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post_card_tokenization_request** | [**PostCardTokenizationRequest**](PostCardTokenizationRequest.md)| Data for creating a customer card | 

### Return type

[**PostCardTokenization200Response**](postCard_tokenization_200_response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Response for status 200 |  -  |

