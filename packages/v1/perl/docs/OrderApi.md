# WWW::OpenAPIClient::OrderApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::OrderApi;
```

All URIs are relative to *https://app.payconductor.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_orders**](OrderApi.md#get_orders) | **GET** /orders/ | List orders
[**get_orders_by_id**](OrderApi.md#get_orders_by_id) | **GET** /orders/{id} | Get order by ID
[**post_orders**](OrderApi.md#post_orders) | **POST** /orders/ | Create order
[**post_orders_by_id_refund**](OrderApi.md#post_orders_by_id_refund) | **POST** /orders/{id}/refund | Refund order


# **get_orders**
> get_orders(period => $period, page => $page, page_size => $page_size, end_date => $end_date, start_date => $start_date, id => $id, status => $status)

List orders

Retrieve a list of orders. Use date filter and pagination parameters to refine results as needed.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrderApi;
my $api_instance = WWW::OpenAPIClient::OrderApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $period = 'Last7Days'; # string | 
my $page = 1; # double | 
my $page_size = 20; # double | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $id = "id_example"; # string | 
my $status = "status_example"; # string | 

eval {
    $api_instance->get_orders(period => $period, page => $page, page_size => $page_size, end_date => $end_date, start_date => $start_date, id => $id, status => $status);
};
if ($@) {
    warn "Exception when calling OrderApi->get_orders: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **period** | **string**|  | [default to &#39;Last7Days&#39;]
 **page** | **double**|  | [default to 1]
 **page_size** | **double**|  | [default to 20]
 **end_date** | **DATE_TIME**|  | [optional] 
 **start_date** | **DATE_TIME**|  | [optional] 
 **id** | **string**|  | [optional] 
 **status** | **string**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_orders_by_id**
> get_orders_by_id(id => $id)

Get order by ID

Retrieve the complete data of an order by our ID

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrderApi;
my $api_instance = WWW::OpenAPIClient::OrderApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $id = "id_example"; # string | 

eval {
    $api_instance->get_orders_by_id(id => $id);
};
if ($@) {
    warn "Exception when calling OrderApi->get_orders_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**|  | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_orders**
> PostOrders200Response post_orders(post_orders_request => $post_orders_request)

Create order

Create a new order for payment using the provided data

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrderApi;
my $api_instance = WWW::OpenAPIClient::OrderApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $post_orders_request = WWW::OpenAPIClient::Object::PostOrdersRequest->new(); # PostOrdersRequest | 

eval {
    my $result = $api_instance->post_orders(post_orders_request => $post_orders_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrderApi->post_orders: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post_orders_request** | [**PostOrdersRequest**](PostOrdersRequest.md)|  | 

### Return type

[**PostOrders200Response**](PostOrders200Response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_orders_by_id_refund**
> post_orders_by_id_refund(id => $id)

Refund order

Initiate a refund for the order specified by ID.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrderApi;
my $api_instance = WWW::OpenAPIClient::OrderApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $id = "id_example"; # string | 

eval {
    $api_instance->post_orders_by_id_refund(id => $id);
};
if ($@) {
    warn "Exception when calling OrderApi->post_orders_by_id_refund: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**|  | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

