# payconductor-sdk.CustomersApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_customers_by_id**](CustomersApi.md#delete_customers_by_id) | **DELETE** /customers/{id} | 
[**get_customers**](CustomersApi.md#get_customers) | **GET** /customers/ | 
[**get_customers_by_id**](CustomersApi.md#get_customers_by_id) | **GET** /customers/{id} | 
[**patch_customers_by_id**](CustomersApi.md#patch_customers_by_id) | **PATCH** /customers/{id} | 
[**post_customers**](CustomersApi.md#post_customers) | **POST** /customers/ | 


# **delete_customers_by_id**
> delete_customers_by_id(id)

### Example

* Basic Authentication (basicAuth):

```python
import payconductor-sdk
from payconductor-sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.payconductor.ai/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = payconductor-sdk.Configuration(
    host = "https://app.payconductor.ai/api/v1"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = payconductor-sdk.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with payconductor-sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = payconductor-sdk.CustomersApi(api_client)
    id = 'id_example' # str | 

    try:
        api_instance.delete_customers_by_id(id)
    except Exception as e:
        print("Exception when calling CustomersApi->delete_customers_by_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_customers**
> get_customers(page, page_size, period, email=email, name=name, end_date=end_date, start_date=start_date)

### Example

* Basic Authentication (basicAuth):

```python
import payconductor-sdk
from payconductor-sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.payconductor.ai/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = payconductor-sdk.Configuration(
    host = "https://app.payconductor.ai/api/v1"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = payconductor-sdk.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with payconductor-sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = payconductor-sdk.CustomersApi(api_client)
    page = 1 # float |  (default to 1)
    page_size = 20 # float |  (default to 20)
    period = Last7Days # str |  (default to Last7Days)
    email = 'email_example' # str |  (optional)
    name = 'name_example' # str |  (optional)
    end_date = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    start_date = '2013-10-20T19:20:30+01:00' # datetime |  (optional)

    try:
        api_instance.get_customers(page, page_size, period, email=email, name=name, end_date=end_date, start_date=start_date)
    except Exception as e:
        print("Exception when calling CustomersApi->get_customers: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **float**|  | [default to 1]
 **page_size** | **float**|  | [default to 20]
 **period** | **str**|  | [default to Last7Days]
 **email** | **str**|  | [optional] 
 **name** | **str**|  | [optional] 
 **end_date** | **datetime**|  | [optional] 
 **start_date** | **datetime**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_customers_by_id**
> get_customers_by_id(id)

### Example

* Basic Authentication (basicAuth):

```python
import payconductor-sdk
from payconductor-sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.payconductor.ai/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = payconductor-sdk.Configuration(
    host = "https://app.payconductor.ai/api/v1"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = payconductor-sdk.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with payconductor-sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = payconductor-sdk.CustomersApi(api_client)
    id = 'id_example' # str | 

    try:
        api_instance.get_customers_by_id(id)
    except Exception as e:
        print("Exception when calling CustomersApi->get_customers_by_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_customers_by_id**
> patch_customers_by_id(id, customer1)

### Example

* Basic Authentication (basicAuth):

```python
import payconductor-sdk
from payconductor-sdk.models.customer1 import Customer1
from payconductor-sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.payconductor.ai/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = payconductor-sdk.Configuration(
    host = "https://app.payconductor.ai/api/v1"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = payconductor-sdk.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with payconductor-sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = payconductor-sdk.CustomersApi(api_client)
    id = 'id_example' # str | 
    customer1 = payconductor-sdk.Customer1() # Customer1 | Schema for creating a new customer

    try:
        api_instance.patch_customers_by_id(id, customer1)
    except Exception as e:
        print("Exception when calling CustomersApi->patch_customers_by_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 
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
> post_customers(customer)

### Example

* Basic Authentication (basicAuth):

```python
import payconductor-sdk
from payconductor-sdk.models.customer import Customer
from payconductor-sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.payconductor.ai/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = payconductor-sdk.Configuration(
    host = "https://app.payconductor.ai/api/v1"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = payconductor-sdk.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with payconductor-sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = payconductor-sdk.CustomersApi(api_client)
    customer = payconductor-sdk.Customer() # Customer | Schema for creating a new customer

    try:
        api_instance.post_customers(customer)
    except Exception as e:
        print("Exception when calling CustomersApi->post_customers: %s\n" % e)
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

