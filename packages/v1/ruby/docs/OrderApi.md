# OpenapiClient::OrderApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_orders**](OrderApi.md#get_orders) | **GET** /orders/ | List orders |
| [**get_orders_by_id**](OrderApi.md#get_orders_by_id) | **GET** /orders/{id} | Get order by ID |
| [**post_orders**](OrderApi.md#post_orders) | **POST** /orders/ | Create order |
| [**post_orders_by_id_refund**](OrderApi.md#post_orders_by_id_refund) | **POST** /orders/{id}/refund | Refund order |


## get_orders

> get_orders(period, page, page_size, opts)

List orders

Retrieve a list of orders. Use date filter and pagination parameters to refine results as needed.

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

api_instance = OpenapiClient::OrderApi.new
period = 'Today' # String | 
page = 8.14 # Float | 
page_size = 8.14 # Float | 
opts = {
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  id: 'id_example', # String | 
  status: 'Generating' # String | 
}

begin
  # List orders
  api_instance.get_orders(period, page, page_size, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderApi->get_orders: #{e}"
end
```

#### Using the get_orders_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_orders_with_http_info(period, page, page_size, opts)

```ruby
begin
  # List orders
  data, status_code, headers = api_instance.get_orders_with_http_info(period, page, page_size, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderApi->get_orders_with_http_info: #{e}"
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
| **status** | **String** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_orders_by_id

> get_orders_by_id(id)

Get order by ID

Retrieve the complete data of an order by our ID

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

api_instance = OpenapiClient::OrderApi.new
id = 'id_example' # String | 

begin
  # Get order by ID
  api_instance.get_orders_by_id(id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderApi->get_orders_by_id: #{e}"
end
```

#### Using the get_orders_by_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_orders_by_id_with_http_info(id)

```ruby
begin
  # Get order by ID
  data, status_code, headers = api_instance.get_orders_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderApi->get_orders_by_id_with_http_info: #{e}"
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


## post_orders

> <PostOrders200Response> post_orders(post_orders_request)

Create order

Create a new order for payment using the provided data

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

api_instance = OpenapiClient::OrderApi.new
post_orders_request = OpenapiClient::PostOrdersRequest.new({charge_amount: 3.56, client_ip: 'client_ip_example', customer: OpenapiClient::Customer.new({document_number: 'document_number_example', document_type: 'Cpf', email: 'email_example', name: 'name_example'}), discount_amount: 3.56, external_id: 'external_id_example', payment: OpenapiClient::PostOrdersRequestPayment.new({payment_method: 'payment_method_example', card: OpenapiClient::CreditCardCard.new({token: 'token_example', cvv: 'cvv_example', expiration: OpenapiClient::CompleteCardDataExpiration.new({month: 3.56, year: 3.56}), holder_name: 'holder_name_example', number: 'number_example'}), installments: OpenapiClient::CreditCardInstallments.new, nu_pay: OpenapiClient::NuPayNuPay.new({cancel_url: 'cancel_url_example', merchant_name: 'merchant_name_example', return_url: 'return_url_example'})}), shipping_fee: 3.56, tax_fee: 3.56}) # PostOrdersRequest | 

begin
  # Create order
  result = api_instance.post_orders(post_orders_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderApi->post_orders: #{e}"
end
```

#### Using the post_orders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostOrders200Response>, Integer, Hash)> post_orders_with_http_info(post_orders_request)

```ruby
begin
  # Create order
  data, status_code, headers = api_instance.post_orders_with_http_info(post_orders_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostOrders200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderApi->post_orders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_orders_request** | [**PostOrdersRequest**](PostOrdersRequest.md) |  |  |

### Return type

[**PostOrders200Response**](PostOrders200Response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_orders_by_id_refund

> post_orders_by_id_refund(id)

Refund order

Initiate a refund for the order specified by ID.

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

api_instance = OpenapiClient::OrderApi.new
id = 'id_example' # String | 

begin
  # Refund order
  api_instance.post_orders_by_id_refund(id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderApi->post_orders_by_id_refund: #{e}"
end
```

#### Using the post_orders_by_id_refund_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_orders_by_id_refund_with_http_info(id)

```ruby
begin
  # Refund order
  data, status_code, headers = api_instance.post_orders_by_id_refund_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderApi->post_orders_by_id_refund_with_http_info: #{e}"
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

