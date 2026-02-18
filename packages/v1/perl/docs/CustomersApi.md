# WWW::OpenAPIClient::CustomersApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::CustomersApi;
```

All URIs are relative to *https://app.payconductor.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_customers_by_id**](CustomersApi.md#delete_customers_by_id) | **DELETE** /customers/{id} | 
[**get_customers**](CustomersApi.md#get_customers) | **GET** /customers/ | 
[**get_customers_by_id**](CustomersApi.md#get_customers_by_id) | **GET** /customers/{id} | 
[**patch_customers_by_id**](CustomersApi.md#patch_customers_by_id) | **PATCH** /customers/{id} | 
[**post_customers**](CustomersApi.md#post_customers) | **POST** /customers/ | 


# **delete_customers_by_id**
> delete_customers_by_id(id => $id)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CustomersApi;
my $api_instance = WWW::OpenAPIClient::CustomersApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $id = "id_example"; # string | 

eval {
    $api_instance->delete_customers_by_id(id => $id);
};
if ($@) {
    warn "Exception when calling CustomersApi->delete_customers_by_id: $@\n";
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

# **get_customers**
> get_customers(page => $page, page_size => $page_size, period => $period, email => $email, name => $name, end_date => $end_date, start_date => $start_date)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CustomersApi;
my $api_instance = WWW::OpenAPIClient::CustomersApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $page = 1; # double | 
my $page_size = 20; # double | 
my $period = 'Last7Days'; # string | 
my $email = "email_example"; # string | 
my $name = "name_example"; # string | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 

eval {
    $api_instance->get_customers(page => $page, page_size => $page_size, period => $period, email => $email, name => $name, end_date => $end_date, start_date => $start_date);
};
if ($@) {
    warn "Exception when calling CustomersApi->get_customers: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **double**|  | [default to 1]
 **page_size** | **double**|  | [default to 20]
 **period** | **string**|  | [default to &#39;Last7Days&#39;]
 **email** | **string**|  | [optional] 
 **name** | **string**|  | [optional] 
 **end_date** | **DATE_TIME**|  | [optional] 
 **start_date** | **DATE_TIME**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_customers_by_id**
> get_customers_by_id(id => $id)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CustomersApi;
my $api_instance = WWW::OpenAPIClient::CustomersApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $id = "id_example"; # string | 

eval {
    $api_instance->get_customers_by_id(id => $id);
};
if ($@) {
    warn "Exception when calling CustomersApi->get_customers_by_id: $@\n";
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

# **patch_customers_by_id**
> patch_customers_by_id(id => $id, customer1 => $customer1)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CustomersApi;
my $api_instance = WWW::OpenAPIClient::CustomersApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $id = "id_example"; # string | 
my $customer1 = WWW::OpenAPIClient::Object::Customer1->new(); # Customer1 | Schema for creating a new customer

eval {
    $api_instance->patch_customers_by_id(id => $id, customer1 => $customer1);
};
if ($@) {
    warn "Exception when calling CustomersApi->patch_customers_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**|  | 
 **customer1** | [**Customer1**](Customer1.md)| Schema for creating a new customer | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_customers**
> post_customers(customer => $customer)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CustomersApi;
my $api_instance = WWW::OpenAPIClient::CustomersApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $customer = WWW::OpenAPIClient::Object::Customer->new(); # Customer | Schema for creating a new customer

eval {
    $api_instance->post_customers(customer => $customer);
};
if ($@) {
    warn "Exception when calling CustomersApi->post_customers: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer** | [**Customer**](Customer.md)| Schema for creating a new customer | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

