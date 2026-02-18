# OpenapiClient::PedidosApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_orders**](PedidosApi.md#get_orders) | **GET** /orders/ | Listar pedidos |
| [**get_orders_by_id**](PedidosApi.md#get_orders_by_id) | **GET** /orders/{id} | Buscar pelo ID |
| [**post_orders**](PedidosApi.md#post_orders) | **POST** /orders/ | Criar pedido |
| [**post_orders_by_id_refund**](PedidosApi.md#post_orders_by_id_refund) | **POST** /orders/{id}/refund | Reembolsar pedido |


## get_orders

> get_orders(period, page, page_size, opts)

Listar pedidos

Recupere uma lista de pedidos. Utilize os parâmetros de filtro de data e paginação para refinar os resultados conforme necessário.

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

api_instance = OpenapiClient::PedidosApi.new
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
  # Listar pedidos
  api_instance.get_orders(period, page, page_size, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling PedidosApi->get_orders: #{e}"
end
```

#### Using the get_orders_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_orders_with_http_info(period, page, page_size, opts)

```ruby
begin
  # Listar pedidos
  data, status_code, headers = api_instance.get_orders_with_http_info(period, page, page_size, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling PedidosApi->get_orders_with_http_info: #{e}"
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

Buscar pelo ID

Localize os dados completos de um pedido buscando pelo nosso id

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

api_instance = OpenapiClient::PedidosApi.new
id = 'id_example' # String | 

begin
  # Buscar pelo ID
  api_instance.get_orders_by_id(id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling PedidosApi->get_orders_by_id: #{e}"
end
```

#### Using the get_orders_by_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_orders_by_id_with_http_info(id)

```ruby
begin
  # Buscar pelo ID
  data, status_code, headers = api_instance.get_orders_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling PedidosApi->get_orders_by_id_with_http_info: #{e}"
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

Criar pedido

Crie um novo pedido para pagamento utilizando os dados fornecidos

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

api_instance = OpenapiClient::PedidosApi.new
post_orders_request = OpenapiClient::PostOrdersRequest.new({charge_amount: 3.56, client_ip: 'client_ip_example', customer: OpenapiClient::Cliente.new({document_number: 'document_number_example', document_type: 'Cpf', email: 'email_example', name: 'name_example'}), discount_amount: 3.56, external_id: 'external_id_example', payment: OpenapiClient::PostOrdersRequestPayment.new({payment_method: 'payment_method_example', card: OpenapiClient::CartODeCrDitoCard.new({token: 'token_example', cvv: 'cvv_example', expiration: OpenapiClient::DadosCompletosDoCartOExpiration.new({month: 3.56, year: 3.56}), holder_name: 'holder_name_example', number: 'number_example'}), installments: OpenapiClient::CartODeCrDitoInstallments.new, nu_pay: OpenapiClient::NuPayNuPay.new({cancel_url: 'cancel_url_example', merchant_name: 'merchant_name_example', return_url: 'return_url_example'})}), shipping_fee: 3.56, tax_fee: 3.56}) # PostOrdersRequest | 

begin
  # Criar pedido
  result = api_instance.post_orders(post_orders_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PedidosApi->post_orders: #{e}"
end
```

#### Using the post_orders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostOrders200Response>, Integer, Hash)> post_orders_with_http_info(post_orders_request)

```ruby
begin
  # Criar pedido
  data, status_code, headers = api_instance.post_orders_with_http_info(post_orders_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostOrders200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PedidosApi->post_orders_with_http_info: #{e}"
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

Reembolsar pedido

Inicie um reembolso para o pedido especificado pelo ID.

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

api_instance = OpenapiClient::PedidosApi.new
id = 'id_example' # String | 

begin
  # Reembolsar pedido
  api_instance.post_orders_by_id_refund(id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling PedidosApi->post_orders_by_id_refund: #{e}"
end
```

#### Using the post_orders_by_id_refund_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_orders_by_id_refund_with_http_info(id)

```ruby
begin
  # Reembolsar pedido
  data, status_code, headers = api_instance.post_orders_by_id_refund_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling PedidosApi->post_orders_by_id_refund_with_http_info: #{e}"
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

