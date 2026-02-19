# OpenapiClient::TransfersApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_withdraws**](TransfersApi.md#get_withdraws) | **GET** /withdraws/ | List withdrawals |
| [**get_withdraws_by_id**](TransfersApi.md#get_withdraws_by_id) | **GET** /withdraws/{id} | Get withdrawal by ID |
| [**post_withdraws**](TransfersApi.md#post_withdraws) | **POST** /withdraws/ | Create withdrawal |


## get_withdraws

> get_withdraws(page, page_size, opts)

List withdrawals

Returns a paginated list of withdrawals and transfers. Filter by creation date or search by ID (withdrawal ID, external ID, acquirer ID, or End2EndID)

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

api_instance = OpenapiClient::TransfersApi.new
page = 8.14 # Float | 
page_size = 8.14 # Float | 
opts = {
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  id: 'id_example' # String | 
}

begin
  # List withdrawals
  api_instance.get_withdraws(page, page_size, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling TransfersApi->get_withdraws: #{e}"
end
```

#### Using the get_withdraws_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_withdraws_with_http_info(page, page_size, opts)

```ruby
begin
  # List withdrawals
  data, status_code, headers = api_instance.get_withdraws_with_http_info(page, page_size, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling TransfersApi->get_withdraws_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Float** |  | [default to 1] |
| **page_size** | **Float** |  | [default to 20] |
| **end_date** | **Time** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **id** | **String** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_withdraws_by_id

> get_withdraws_by_id(id)

Get withdrawal by ID

Returns the details of a specific withdrawal or transfer using its ID

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

api_instance = OpenapiClient::TransfersApi.new
id = 'id_example' # String | 

begin
  # Get withdrawal by ID
  api_instance.get_withdraws_by_id(id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling TransfersApi->get_withdraws_by_id: #{e}"
end
```

#### Using the get_withdraws_by_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_withdraws_by_id_with_http_info(id)

```ruby
begin
  # Get withdrawal by ID
  data, status_code, headers = api_instance.get_withdraws_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling TransfersApi->get_withdraws_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## post_withdraws

> <PostWithdraws200Response> post_withdraws(post_withdraws_request)

Create withdrawal

Create a new withdrawal or transfer to the provided payment account

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

api_instance = OpenapiClient::TransfersApi.new
post_withdraws_request = OpenapiClient::PostWithdrawsRequest.new({amount: 3.56, payout_account: OpenapiClient::PostWithdrawsRequestPayoutAccount.new({owner_document: 'owner_document_example', owner_name: 'owner_name_example', pix_key: 'pix_key_example', pix_type: OpenapiClient::PixType::Cpf})}) # PostWithdrawsRequest | 

begin
  # Create withdrawal
  result = api_instance.post_withdraws(post_withdraws_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TransfersApi->post_withdraws: #{e}"
end
```

#### Using the post_withdraws_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostWithdraws200Response>, Integer, Hash)> post_withdraws_with_http_info(post_withdraws_request)

```ruby
begin
  # Create withdrawal
  data, status_code, headers = api_instance.post_withdraws_with_http_info(post_withdraws_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostWithdraws200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TransfersApi->post_withdraws_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_withdraws_request** | [**PostWithdrawsRequest**](PostWithdrawsRequest.md) |  |  |

### Return type

[**PostWithdraws200Response**](PostWithdraws200Response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

