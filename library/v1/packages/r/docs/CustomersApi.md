# CustomersApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetCustomers**](CustomersApi.md#GetCustomers) | **GET** /customers/ | Get all customers
[**GetCustomersById**](CustomersApi.md#GetCustomersById) | **GET** /customers/{id} | Get customer by ID
[**PatchCustomersById**](CustomersApi.md#PatchCustomersById) | **PATCH** /customers/{id} | Update customer data
[**PostCustomers**](CustomersApi.md#PostCustomers) | **POST** /customers/ | Create new customer


# **GetCustomers**
> GetCustomers(page, page_size, email = var.email, name = var.name, end_date = var.end_date, start_date = var.start_date)

Get all customers

Retrieve a list of all customers associated with the organization, with support for filters and pagination.

### Example
```R
library(payconductor_sdk)

# Get all customers
#
# prepare function argument(s)
var_page <- 1 # numeric | 
var_page_size <- 20 # numeric | 
var_email <- "email_example" # character |  (Optional)
var_name <- "name_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)

api_instance <- CustomersApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
api_instance$GetCustomers(var_page, var_page_size, email = var_email, name = var_name, end_date = var_end_date, start_date = var_start_date)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **numeric**|  | [default to 1]
 **page_size** | **numeric**|  | [default to 20]
 **email** | **character**|  | [optional] 
 **name** | **character**|  | [optional] 
 **end_date** | **character**|  | [optional] 
 **start_date** | **character**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


# **GetCustomersById**
> GetCustomersById(id)

Get customer by ID

Retrieve the complete details of a specific customer using their unique ID.

### Example
```R
library(payconductor_sdk)

# Get customer by ID
#
# prepare function argument(s)
var_id <- "id_example" # character | 

api_instance <- CustomersApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
api_instance$GetCustomersById(var_id)
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


# **PatchCustomersById**
> PatchCustomersById(id, customer1)

Update customer data

Update the information of an existing customer by providing the new data in the request body.

### Example
```R
library(payconductor_sdk)

# Update customer data
#
# prepare function argument(s)
var_id <- "id_example" # character | 
var_customer1 <- Customer_1$new(Customer_address$new("city_example", "country_example", "neighborhood_example", "number_example", "state_example", "street_example", "zipCode_example"), "documentNumber_example", DocumentType$new(), "email_example", "name_example", "phoneNumber_example") # Customer1 | Schema for creating a new customer

api_instance <- CustomersApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
api_instance$PatchCustomersById(var_id, var_customer1)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 
 **customer1** | [**Customer1**](Customer1.md)| Schema for creating a new customer | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined


# **PostCustomers**
> PostCustomers(customer)

Create new customer

Create a new customer by providing the required data in the request body.

### Example
```R
library(payconductor_sdk)

# Create new customer
#
# prepare function argument(s)
var_customer <- Customer$new("documentNumber_example", DocumentType$new(), "email_example", "name_example", Customer_address$new("city_example", "country_example", "neighborhood_example", "number_example", "state_example", "street_example", "zipCode_example"), "phoneNumber_example") # Customer | Schema for creating a new customer

api_instance <- CustomersApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
api_instance$PostCustomers(var_customer)
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


