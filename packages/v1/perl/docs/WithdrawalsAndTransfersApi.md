# WWW::OpenAPIClient::WithdrawalsAndTransfersApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::WithdrawalsAndTransfersApi;
```

All URIs are relative to *https://app.payconductor.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_withdraws**](WithdrawalsAndTransfersApi.md#get_withdraws) | **GET** /withdraws/ | List withdrawals
[**get_withdraws_by_id**](WithdrawalsAndTransfersApi.md#get_withdraws_by_id) | **GET** /withdraws/{id} | Get withdrawal by ID
[**post_withdraws**](WithdrawalsAndTransfersApi.md#post_withdraws) | **POST** /withdraws/ | Create withdrawal


# **get_withdraws**
> get_withdraws(period => $period, page => $page, page_size => $page_size, end_date => $end_date, start_date => $start_date, id => $id)

List withdrawals

Returns a paginated list of withdrawals and transfers. Filter by creation date or search by ID (withdrawal ID, external ID, acquirer ID, or End2EndID)

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::WithdrawalsAndTransfersApi;
my $api_instance = WWW::OpenAPIClient::WithdrawalsAndTransfersApi->new(

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

eval {
    $api_instance->get_withdraws(period => $period, page => $page, page_size => $page_size, end_date => $end_date, start_date => $start_date, id => $id);
};
if ($@) {
    warn "Exception when calling WithdrawalsAndTransfersApi->get_withdraws: $@\n";
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

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_withdraws_by_id**
> get_withdraws_by_id(id => $id)

Get withdrawal by ID

Returns the details of a specific withdrawal or transfer using its ID

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::WithdrawalsAndTransfersApi;
my $api_instance = WWW::OpenAPIClient::WithdrawalsAndTransfersApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $id = "id_example"; # string | 

eval {
    $api_instance->get_withdraws_by_id(id => $id);
};
if ($@) {
    warn "Exception when calling WithdrawalsAndTransfersApi->get_withdraws_by_id: $@\n";
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

# **post_withdraws**
> PostWithdraws200Response post_withdraws(post_withdraws_request => $post_withdraws_request)

Create withdrawal

Create a new withdrawal or transfer to the provided payment account

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::WithdrawalsAndTransfersApi;
my $api_instance = WWW::OpenAPIClient::WithdrawalsAndTransfersApi->new(

    # Configure HTTP basic authorization: basicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $post_withdraws_request = WWW::OpenAPIClient::Object::PostWithdrawsRequest->new(); # PostWithdrawsRequest | 

eval {
    my $result = $api_instance->post_withdraws(post_withdraws_request => $post_withdraws_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WithdrawalsAndTransfersApi->post_withdraws: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post_withdraws_request** | [**PostWithdrawsRequest**](PostWithdrawsRequest.md)|  | 

### Return type

[**PostWithdraws200Response**](PostWithdraws200Response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

