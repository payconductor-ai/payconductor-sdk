# OpenapiClient::CustomersApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_customers**](CustomersApi.md#get_customers) | **GET** /customers/ | Get all customers |
| [**get_customers_by_id**](CustomersApi.md#get_customers_by_id) | **GET** /customers/{id} | Get customer by ID |
| [**patch_customers_by_id**](CustomersApi.md#patch_customers_by_id) | **PATCH** /customers/{id} | Update customer data |
| [**post_customers**](CustomersApi.md#post_customers) | **POST** /customers/ | Create new customer |


## get_customers

> get_customers(page, page_size, opts)

Get all customers

Retrieve a list of all customers associated with the organization, with support for filters and pagination.

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

api_instance = OpenapiClient::CustomersApi.new
page = 8.14 # Float | 
page_size = 8.14 # Float | 
opts = {
  email: 'email_example', # String | 
  name: 'name_example', # String | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  # Get all customers
  api_instance.get_customers(page, page_size, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomersApi->get_customers: #{e}"
end
```

#### Using the get_customers_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_customers_with_http_info(page, page_size, opts)

```ruby
begin
  # Get all customers
  data, status_code, headers = api_instance.get_customers_with_http_info(page, page_size, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomersApi->get_customers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Float** |  | [default to 1] |
| **page_size** | **Float** |  | [default to 20] |
| **email** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **start_date** | **Time** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_customers_by_id

> get_customers_by_id(id)

Get customer by ID

Retrieve the complete details of a specific customer using their unique ID.

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

api_instance = OpenapiClient::CustomersApi.new
id = 'id_example' # String | 

begin
  # Get customer by ID
  api_instance.get_customers_by_id(id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomersApi->get_customers_by_id: #{e}"
end
```

#### Using the get_customers_by_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_customers_by_id_with_http_info(id)

```ruby
begin
  # Get customer by ID
  data, status_code, headers = api_instance.get_customers_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomersApi->get_customers_by_id_with_http_info: #{e}"
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


## patch_customers_by_id

> patch_customers_by_id(id, customer1)

Update customer data

Update the information of an existing customer by providing the new data in the request body.

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

api_instance = OpenapiClient::CustomersApi.new
id = 'id_example' # String | 
customer1 = OpenapiClient::Customer1.new # Customer1 | Schema for creating a new customer

begin
  # Update customer data
  api_instance.patch_customers_by_id(id, customer1)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomersApi->patch_customers_by_id: #{e}"
end
```

#### Using the patch_customers_by_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> patch_customers_by_id_with_http_info(id, customer1)

```ruby
begin
  # Update customer data
  data, status_code, headers = api_instance.patch_customers_by_id_with_http_info(id, customer1)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomersApi->patch_customers_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **customer1** | [**Customer1**](Customer1.md) | Schema for creating a new customer |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## post_customers

> post_customers(customer)

Create new customer

Create a new customer by providing the required data in the request body.

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

api_instance = OpenapiClient::CustomersApi.new
customer = OpenapiClient::Customer.new({document_number: 'document_number_example', document_type: 'Cpf', email: 'email_example', name: 'name_example'}) # Customer | Schema for creating a new customer

begin
  # Create new customer
  api_instance.post_customers(customer)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomersApi->post_customers: #{e}"
end
```

#### Using the post_customers_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_customers_with_http_info(customer)

```ruby
begin
  # Create new customer
  data, status_code, headers = api_instance.post_customers_with_http_info(customer)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomersApi->post_customers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer** | [**Customer**](Customer.md) | Schema for creating a new customer |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

