# OrdersApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetOrders**](OrdersApi.md#GetOrders) | **GET** /orders/ | List orders
[**GetOrdersById**](OrdersApi.md#GetOrdersById) | **GET** /orders/{id} | Get order by ID
[**PostOrders**](OrdersApi.md#PostOrders) | **POST** /orders/ | Create order
[**PostOrdersByIdConfirm**](OrdersApi.md#PostOrdersByIdConfirm) | **POST** /orders/{id}/confirm | Confirm order
[**PostOrdersByIdRefund**](OrdersApi.md#PostOrdersByIdRefund) | **POST** /orders/{id}/refund | Refund order


# **GetOrders**
> GetOrders(page, page_size, end_date = var.end_date, start_date = var.start_date, id = var.id, status = var.status)

List orders

Retrieve a list of orders. Use date filter and pagination parameters to refine results as needed.

### Example
```R
library(payconductor_sdk)

# List orders
#
# prepare function argument(s)
var_page <- 1 # numeric | 
var_page_size <- 20 # numeric | 
var_end_date <- "end_date_example" # character |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_id <- "id_example" # character |  (Optional)
var_status <- "status_example" # character |  (Optional)

api_instance <- OrdersApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
api_instance$GetOrders(var_page, var_page_size, end_date = var_end_date, start_date = var_start_date, id = var_id, status = var_status)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **numeric**|  | [default to 1]
 **page_size** | **numeric**|  | [default to 20]
 **end_date** | **character**|  | [optional] 
 **start_date** | **character**|  | [optional] 
 **id** | **character**|  | [optional] 
 **status** | Enum [Generating, Pending, Completed, Failed, Canceled, Refunding, Refunded, InDispute, Chargeback] |  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


# **GetOrdersById**
> GetOrdersById(id)

Get order by ID

Retrieve the complete data of an order by our ID

### Example
```R
library(payconductor_sdk)

# Get order by ID
#
# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- OrdersApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
api_instance$GetOrdersById(var_id)
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


# **PostOrders**
> PostOrders200Response PostOrders(post_orders_request)

Create order

Create a new order for payment using the provided data

### Example
```R
library(payconductor_sdk)

# Create order
#
# prepare function argument(s)
var_post_orders_request <- postOrders_request$new(123, "clientIp_example", Customer$new("documentNumber_example", "Cpf", "email_example", "name_example", Customer_address$new("city_example", "country_example", "neighborhood_example", "number_example", "state_example", "street_example", "zipCode_example"), "phoneNumber_example"), 123, "externalId_example", postOrders_request_payment$new("paymentMethod_example", Credit_Card_card$new("token_example", "cvv_example", Complete_card_data_expiration$new(123, 123), "holderName_example", "number_example", "firstSixCardNumber_example"), Credit_Card_installments$new(), NuPay_nuPay$new("cancelUrl_example", "merchantName_example", "returnUrl_example", "storeName_example"), Draft_expirationInSeconds$new(), "softDescriptor_example", Bank_Slip_expirationInDays$new(), c(Draft_availablePaymentMethods_inner$new())), 123, 123, postOrders_request_fingerprints$new("threatMetrixFingerprintId_example"), c(postOrders_request_items_inner$new("id_example", "isPhysical_example", "name_example", 123, 123)), MerchantInput$new("document_example", "email_example", "name_example"), 123, postOrders_request_session$new(123, "checkoutUrl_example", "sessionId_example", "externalSessionId_example"), 123) # PostOrdersRequest | 

api_instance <- OrdersApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PostOrders(var_post_orders_requestdata_file = "result.txt")
result <- api_instance$PostOrders(var_post_orders_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post_orders_request** | [**PostOrdersRequest**](PostOrdersRequest.md)|  | 

### Return type

[**PostOrders200Response**](postOrders_200_response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Response for status 200 |  -  |

# **PostOrdersByIdConfirm**
> PostOrdersByIdConfirm200Response PostOrdersByIdConfirm(id, post_orders_request_payment)

Confirm order

Confirms a Draft order, setting the payment method and processing the charges associated with the order.

### Example
```R
library(payconductor_sdk)

# Confirm order
#
# prepare function argument(s)
var_id <- "id_example" # character | 
var_post_orders_request_payment <- postOrders_request_payment$new("paymentMethod_example", Credit_Card_card$new("token_example", "cvv_example", Complete_card_data_expiration$new(123, 123), "holderName_example", "number_example", "firstSixCardNumber_example"), Credit_Card_installments$new(), NuPay_nuPay$new("cancelUrl_example", "merchantName_example", "returnUrl_example", "storeName_example"), Draft_expirationInSeconds$new(), "softDescriptor_example", Bank_Slip_expirationInDays$new(), c(Draft_availablePaymentMethods_inner$new())) # PostOrdersRequestPayment | Payment data for the order (Pix, Credit Card, Bank Slip, NuPay, etc...)

api_instance <- OrdersApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PostOrdersByIdConfirm(var_id, var_post_orders_request_paymentdata_file = "result.txt")
result <- api_instance$PostOrdersByIdConfirm(var_id, var_post_orders_request_payment)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 
 **post_orders_request_payment** | [**PostOrdersRequestPayment**](PostOrdersRequestPayment.md)| Payment data for the order (Pix, Credit Card, Bank Slip, NuPay, etc...) | 

### Return type

[**PostOrdersByIdConfirm200Response**](postOrdersByIdConfirm_200_response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Response for status 200 |  -  |

# **PostOrdersByIdRefund**
> PostOrdersByIdRefund(id)

Refund order

Initiate a refund for the order specified by ID.

### Example
```R
library(payconductor_sdk)

# Refund order
#
# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- OrdersApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
api_instance$PostOrdersByIdRefund(var_id)
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


