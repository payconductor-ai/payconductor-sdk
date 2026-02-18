# openapi_client.SaquesETransfernciasApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_withdraws**](SaquesETransfernciasApi.md#get_withdraws) | **GET** /withdraws/ | Lista os saques
[**get_withdraws_by_id**](SaquesETransfernciasApi.md#get_withdraws_by_id) | **GET** /withdraws/{id} | Buscar pelo ID
[**post_withdraws**](SaquesETransfernciasApi.md#post_withdraws) | **POST** /withdraws/ | Cria saque


# **get_withdraws**
> get_withdraws(period, page, page_size, end_date=end_date, start_date=start_date, id=id)

Lista os saques

Retorna uma lista paginada de saques e transferências. Permite filtrar por data de criação ou buscar por ID (ID do saque, ID externo, ID da adquirente ou End2EndID)

### Example

* Basic Authentication (basicAuth):

```python
import openapi_client
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.payconductor.ai/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://app.payconductor.ai/api/v1"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = openapi_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.SaquesETransfernciasApi(api_client)
    period = Last7Days # str |  (default to Last7Days)
    page = 1 # float |  (default to 1)
    page_size = 20 # float |  (default to 20)
    end_date = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    start_date = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    id = 'id_example' # str |  (optional)

    try:
        # Lista os saques
        api_instance.get_withdraws(period, page, page_size, end_date=end_date, start_date=start_date, id=id)
    except Exception as e:
        print("Exception when calling SaquesETransfernciasApi->get_withdraws: %s\n" % e)
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

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_withdraws_by_id**
> get_withdraws_by_id(id)

Buscar pelo ID

Retorna os detalhes de um saque ou transferência específico usando seu ID

### Example

* Basic Authentication (basicAuth):

```python
import openapi_client
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.payconductor.ai/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://app.payconductor.ai/api/v1"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = openapi_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.SaquesETransfernciasApi(api_client)
    id = 'id_example' # str | 

    try:
        # Buscar pelo ID
        api_instance.get_withdraws_by_id(id)
    except Exception as e:
        print("Exception when calling SaquesETransfernciasApi->get_withdraws_by_id: %s\n" % e)
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

# **post_withdraws**
> PostWithdraws200Response post_withdraws(post_withdraws_request)

Cria saque

Realiza um novo saque ou transferência para a conta de pagamento informada

### Example

* Basic Authentication (basicAuth):

```python
import openapi_client
from openapi_client.models.post_withdraws200_response import PostWithdraws200Response
from openapi_client.models.post_withdraws_request import PostWithdrawsRequest
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.payconductor.ai/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://app.payconductor.ai/api/v1"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = openapi_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.SaquesETransfernciasApi(api_client)
    post_withdraws_request = openapi_client.PostWithdrawsRequest() # PostWithdrawsRequest | 

    try:
        # Cria saque
        api_response = api_instance.post_withdraws(post_withdraws_request)
        print("The response of SaquesETransfernciasApi->post_withdraws:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SaquesETransfernciasApi->post_withdraws: %s\n" % e)
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

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Response for status 200 |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

