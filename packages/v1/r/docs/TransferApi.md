# TransferApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetWithdraws**](TransferApi.md#GetWithdraws) | **GET** /withdraws/ | List withdrawals
[**GetWithdrawsById**](TransferApi.md#GetWithdrawsById) | **GET** /withdraws/{id} | Get withdrawal by ID
[**PostWithdraws**](TransferApi.md#PostWithdraws) | **POST** /withdraws/ | Create withdrawal


# **GetWithdraws**
> GetWithdraws(period, page, page_size, end_date = var.end_date, start_date = var.start_date, id = var.id)

List withdrawals

Returns a paginated list of withdrawals and transfers. Filter by creation date or search by ID (withdrawal ID, external ID, acquirer ID, or End2EndID)

### Example
```R
library(payconductor-sdk)

# List withdrawals
#
# prepare function argument(s)
var_period <- "Last7Days" # character | 
var_page <- 1 # numeric | 
var_page_size <- 20 # numeric | 
var_end_date <- "end_date_example" # character |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_id <- "id_example" # character |  (Optional)

api_instance <- TransferApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
api_instance$GetWithdraws(var_period, var_page, var_page_size, end_date = var_end_date, start_date = var_start_date, id = var_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **period** | Enum [Today, Yesterday, Last7Days, Last30Days, ThisMonth, LastMonth, ThisYear, Custom] |  | [default to &quot;Last7Days&quot;]
 **page** | **numeric**|  | [default to 1]
 **page_size** | **numeric**|  | [default to 20]
 **end_date** | **character**|  | [optional] 
 **start_date** | **character**|  | [optional] 
 **id** | **character**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


# **GetWithdrawsById**
> GetWithdrawsById(id)

Get withdrawal by ID

Returns the details of a specific withdrawal or transfer using its ID

### Example
```R
library(payconductor-sdk)

# Get withdrawal by ID
#
# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- TransferApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
api_instance$GetWithdrawsById(var_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


# **PostWithdraws**
> PostWithdraws200Response PostWithdraws(post_withdraws_request)

Create withdrawal

Create a new withdrawal or transfer to the provided payment account

### Example
```R
library(payconductor-sdk)

# Create withdrawal
#
# prepare function argument(s)
var_post_withdraws_request <- postWithdraws_request$new(123, postWithdraws_request_payoutAccount$new("ownerDocument_example", "ownerName_example", "pixKey_example", "Cnpj"), "externalId_example", MerchantInput$new("document_example", "email_example", "name_example")) # PostWithdrawsRequest | 

api_instance <- TransferApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PostWithdraws(var_post_withdraws_requestdata_file = "result.txt")
result <- api_instance$PostWithdraws(var_post_withdraws_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post_withdraws_request** | [**PostWithdrawsRequest**](PostWithdrawsRequest.md)|  | 

### Return type

[**PostWithdraws200Response**](postWithdraws_200_response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Response for status 200 |  -  |

