# OpenapiClient::SaquesETransfernciasApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_withdraws**](SaquesETransfernciasApi.md#get_withdraws) | **GET** /withdraws/ | Lista os saques |
| [**get_withdraws_by_id**](SaquesETransfernciasApi.md#get_withdraws_by_id) | **GET** /withdraws/{id} | Buscar pelo ID |
| [**post_withdraws**](SaquesETransfernciasApi.md#post_withdraws) | **POST** /withdraws/ | Cria saque |


## get_withdraws

> get_withdraws(period, page, page_size, opts)

Lista os saques

Retorna uma lista paginada de saques e transferências. Permite filtrar por data de criação ou buscar por ID (ID do saque, ID externo, ID da adquirente ou End2EndID)

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

api_instance = OpenapiClient::SaquesETransfernciasApi.new
period = 'Today' # String | 
page = 8.14 # Float | 
page_size = 8.14 # Float | 
opts = {
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  id: 'id_example' # String | 
}

begin
  # Lista os saques
  api_instance.get_withdraws(period, page, page_size, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling SaquesETransfernciasApi->get_withdraws: #{e}"
end
```

#### Using the get_withdraws_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_withdraws_with_http_info(period, page, page_size, opts)

```ruby
begin
  # Lista os saques
  data, status_code, headers = api_instance.get_withdraws_with_http_info(period, page, page_size, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling SaquesETransfernciasApi->get_withdraws_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **period** | **String** |  | [default to &#39;Last7Days&#39;] |
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

Buscar pelo ID

Retorna os detalhes de um saque ou transferência específico usando seu ID

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

api_instance = OpenapiClient::SaquesETransfernciasApi.new
id = 'id_example' # String | 

begin
  # Buscar pelo ID
  api_instance.get_withdraws_by_id(id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling SaquesETransfernciasApi->get_withdraws_by_id: #{e}"
end
```

#### Using the get_withdraws_by_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_withdraws_by_id_with_http_info(id)

```ruby
begin
  # Buscar pelo ID
  data, status_code, headers = api_instance.get_withdraws_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling SaquesETransfernciasApi->get_withdraws_by_id_with_http_info: #{e}"
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

Cria saque

Realiza um novo saque ou transferência para a conta de pagamento informada

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

api_instance = OpenapiClient::SaquesETransfernciasApi.new
post_withdraws_request = OpenapiClient::PostWithdrawsRequest.new({amount: 3.56, payout_account: OpenapiClient::PostWithdrawsRequestPayoutAccount.new({owner_document: 'owner_document_example', owner_name: 'owner_name_example', pix_key: 'pix_key_example', pix_type: 'Cnpj'})}) # PostWithdrawsRequest | 

begin
  # Cria saque
  result = api_instance.post_withdraws(post_withdraws_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SaquesETransfernciasApi->post_withdraws: #{e}"
end
```

#### Using the post_withdraws_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostWithdraws200Response>, Integer, Hash)> post_withdraws_with_http_info(post_withdraws_request)

```ruby
begin
  # Cria saque
  data, status_code, headers = api_instance.post_withdraws_with_http_info(post_withdraws_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostWithdraws200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SaquesETransfernciasApi->post_withdraws_with_http_info: #{e}"
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

