# payconductor_sdk.OrderApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_orders**](OrderApi.md#get_orders) | **GET** /orders/ | List orders
[**get_orders_by_id**](OrderApi.md#get_orders_by_id) | **GET** /orders/{id} | Get order by ID
[**post_orders**](OrderApi.md#post_orders) | **POST** /orders/ | Create order
[**post_orders_by_id_refund**](OrderApi.md#post_orders_by_id_refund) | **POST** /orders/{id}/refund | Refund order


# **get_orders**
> get_orders(period, page, page_size, end_date=end_date, start_date=start_date, id=id, status=status)

List orders

Retrieve a list of orders. Use date filter and pagination parameters to refine results as needed.

### Example

* Basic Authentication (basicAuth):

```python
import payconductor_sdk
from payconductor_sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.payconductor.ai/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = payconductor_sdk.Configuration(
    host = "https://app.payconductor.ai/api/v1"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = payconductor_sdk.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with payconductor_sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = payconductor_sdk.OrderApi(api_client)
    period = Last7Days # str |  (default to Last7Days)
    page = 1 # float |  (default to 1)
    page_size = 20 # float |  (default to 20)
    end_date = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    start_date = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    id = 'id_example' # str |  (optional)
    status = 'status_example' # str |  (optional)

    try:
        # List orders
        api_instance.get_orders(period, page, page_size, end_date=end_date, start_date=start_date, id=id, status=status)
    except Exception as e:
        print("Exception when calling OrderApi->get_orders: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **period** | **str**|  | [default to Last7Days]
 **page** | **float**|  | [default to 1]
 **page_size** | **float**|  | [default to 20]
 **end_date** | **datetime**|  | [optional] 
 **start_date** | **datetime**|  | [optional] 
 **id** | **str**|  | [optional] 
 **status** | **str**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_orders_by_id**
> get_orders_by_id(id)

Get order by ID

Retrieve the complete data of an order by our ID

### Example

* Basic Authentication (basicAuth):

```python
import payconductor_sdk
from payconductor_sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.payconductor.ai/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = payconductor_sdk.Configuration(
    host = "https://app.payconductor.ai/api/v1"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = payconductor_sdk.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with payconductor_sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = payconductor_sdk.OrderApi(api_client)
    id = 'id_example' # str | 

    try:
        # Get order by ID
        api_instance.get_orders_by_id(id)
    except Exception as e:
        print("Exception when calling OrderApi->get_orders_by_id: %s\n" % e)
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

# **post_orders**
> PostOrders200Response post_orders(post_orders_request)

Create order

Create a new order for payment using the provided data

### Example

* Basic Authentication (basicAuth):

```python
import payconductor_sdk
from payconductor_sdk.models.post_orders200_response import PostOrders200Response
from payconductor_sdk.models.post_orders_request import PostOrdersRequest
from payconductor_sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.payconductor.ai/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = payconductor_sdk.Configuration(
    host = "https://app.payconductor.ai/api/v1"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = payconductor_sdk.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with payconductor_sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = payconductor_sdk.OrderApi(api_client)
    post_orders_request = payconductor_sdk.PostOrdersRequest() # PostOrdersRequest | 

    try:
        # Create order
        api_response = api_instance.post_orders(post_orders_request)
        print("The response of OrderApi->post_orders:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OrderApi->post_orders: %s\n" % e)
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

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Response for status 200 |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_orders_by_id_refund**
> post_orders_by_id_refund(id)

Refund order

Initiate a refund for the order specified by ID.

### Example

* Basic Authentication (basicAuth):

```python
import payconductor_sdk
from payconductor_sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.payconductor.ai/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = payconductor_sdk.Configuration(
    host = "https://app.payconductor.ai/api/v1"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = payconductor_sdk.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with payconductor_sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = payconductor_sdk.OrderApi(api_client)
    id = 'id_example' # str | 

    try:
        # Refund order
        api_instance.post_orders_by_id_refund(id)
    except Exception as e:
        print("Exception when calling OrderApi->post_orders_by_id_refund: %s\n" % e)
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

