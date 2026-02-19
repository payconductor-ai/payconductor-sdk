# WWW::OpenAPIClient::CardTokenizationApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::CardTokenizationApi;
```

All URIs are relative to *https://app.payconductor.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post_card_tokenization**](CardTokenizationApi.md#post_card_tokenization) | **POST** /card-tokenization/ | Tokenize card


# **post_card_tokenization**
> PostCardTokenization200Response post_card_tokenization(post_card_tokenization_request => $post_card_tokenization_request)

Tokenize card

Tokenize credit cards for future charges.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CardTokenizationApi;
my $api_instance = WWW::OpenAPIClient::CardTokenizationApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $post_card_tokenization_request = WWW::OpenAPIClient::Object::PostCardTokenizationRequest->new(); # PostCardTokenizationRequest | Data for creating a customer card

eval {
    my $result = $api_instance->post_card_tokenization(post_card_tokenization_request => $post_card_tokenization_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CardTokenizationApi->post_card_tokenization: $@\n";
}
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

