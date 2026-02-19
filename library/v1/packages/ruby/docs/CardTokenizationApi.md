# OpenapiClient::CardTokenizationApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**post_card_tokenization**](CardTokenizationApi.md#post_card_tokenization) | **POST** /card-tokenization/ | Tokenize card |


## post_card_tokenization

> <PostCardTokenization200Response> post_card_tokenization(post_card_tokenization_request)

Tokenize card

Tokenize credit cards for future charges.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = OpenapiClient::CardTokenizationApi.new
post_card_tokenization_request = OpenapiClient::PostCardTokenizationRequest.new({card: OpenapiClient::CompleteCardData.new({cvv: 'cvv_example', expiration: OpenapiClient::CompleteCardDataExpiration.new({month: 3.56, year: 3.56}), holder_name: 'holder_name_example', number: 'number_example'}), save_card: false, customer: OpenapiClient::PostCardTokenizationRequestCustomer.new({document_number: 'document_number_example', document_type: OpenapiClient::DocumentType::Cpf, email: 'email_example', name: 'name_example', id: 'id_example'})}) # PostCardTokenizationRequest | Data for creating a customer card

begin
  # Tokenize card
  result = api_instance.post_card_tokenization(post_card_tokenization_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CardTokenizationApi->post_card_tokenization: #{e}"
end
```

#### Using the post_card_tokenization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostCardTokenization200Response>, Integer, Hash)> post_card_tokenization_with_http_info(post_card_tokenization_request)

```ruby
begin
  # Tokenize card
  data, status_code, headers = api_instance.post_card_tokenization_with_http_info(post_card_tokenization_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostCardTokenization200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CardTokenizationApi->post_card_tokenization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_card_tokenization_request** | [**PostCardTokenizationRequest**](PostCardTokenizationRequest.md) | Data for creating a customer card |  |

### Return type

[**PostCardTokenization200Response**](PostCardTokenization200Response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

