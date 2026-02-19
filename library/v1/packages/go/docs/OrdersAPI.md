# \OrdersAPI

All URIs are relative to *https://app.payconductor.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetOrders**](OrdersAPI.md#GetOrders) | **Get** /orders/ | List orders
[**GetOrdersById**](OrdersAPI.md#GetOrdersById) | **Get** /orders/{id} | Get order by ID
[**PostOrders**](OrdersAPI.md#PostOrders) | **Post** /orders/ | Create order
[**PostOrdersByIdConfirm**](OrdersAPI.md#PostOrdersByIdConfirm) | **Post** /orders/{id}/confirm | Confirm order
[**PostOrdersByIdRefund**](OrdersAPI.md#PostOrdersByIdRefund) | **Post** /orders/{id}/refund | Refund order



## GetOrders

> GetOrders(ctx).Page(page).PageSize(pageSize).EndDate(endDate).StartDate(startDate).Id(id).Status(status).Execute()

List orders



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
    "time"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	page := float32(8.14) // float32 |  (default to 1)
	pageSize := float32(8.14) // float32 |  (default to 20)
	endDate := time.Now() // time.Time |  (optional)
	startDate := time.Now() // time.Time |  (optional)
	id := "id_example" // string |  (optional)
	status := "status_example" // string |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.OrdersAPI.GetOrders(context.Background()).Page(page).PageSize(pageSize).EndDate(endDate).StartDate(startDate).Id(id).Status(status).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OrdersAPI.GetOrders``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiGetOrdersRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **float32** |  | [default to 1]
 **pageSize** | **float32** |  | [default to 20]
 **endDate** | **time.Time** |  | 
 **startDate** | **time.Time** |  | 
 **id** | **string** |  | 
 **status** | **string** |  | 

### Return type

 (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetOrdersById

> GetOrdersById(ctx, id).Execute()

Get order by ID



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := "id_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.OrdersAPI.GetOrdersById(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OrdersAPI.GetOrdersById``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetOrdersByIdRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

 (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PostOrders

> PostOrders200Response PostOrders(ctx).PostOrdersRequest(postOrdersRequest).Execute()

Create order



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	postOrdersRequest := *openapiclient.NewPostOrdersRequest(float32(123), "ClientIp_example", *openapiclient.NewCustomer("DocumentNumber_example", openapiclient.DocumentType("Cpf"), "Email_example", "Name_example"), float32(123), "ExternalId_example", *openapiclient.NewPostOrdersRequestPayment(openapiclient.PaymentMethod("Pix"), *openapiclient.NewCreditCardCard("Token_example", "Cvv_example", *openapiclient.NewCompleteCardDataExpiration(float32(123), float32(123)), "HolderName_example", "Number_example"), *openapiclient.NewCreditCardInstallments(), *openapiclient.NewNuPayNuPay("CancelUrl_example", "MerchantName_example", "ReturnUrl_example")), float32(123), float32(123)) // PostOrdersRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.OrdersAPI.PostOrders(context.Background()).PostOrdersRequest(postOrdersRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OrdersAPI.PostOrders``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PostOrders`: PostOrders200Response
	fmt.Fprintf(os.Stdout, "Response from `OrdersAPI.PostOrders`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiPostOrdersRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postOrdersRequest** | [**PostOrdersRequest**](PostOrdersRequest.md) |  | 

### Return type

[**PostOrders200Response**](PostOrders200Response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PostOrdersByIdConfirm

> PostOrdersByIdConfirm200Response PostOrdersByIdConfirm(ctx, id).PostOrdersRequestPayment(postOrdersRequestPayment).Execute()

Confirm order



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := "id_example" // string | 
	postOrdersRequestPayment := *openapiclient.NewPostOrdersRequestPayment(openapiclient.PaymentMethod("Pix"), *openapiclient.NewCreditCardCard("Token_example", "Cvv_example", *openapiclient.NewCompleteCardDataExpiration(float32(123), float32(123)), "HolderName_example", "Number_example"), *openapiclient.NewCreditCardInstallments(), *openapiclient.NewNuPayNuPay("CancelUrl_example", "MerchantName_example", "ReturnUrl_example")) // PostOrdersRequestPayment | Payment data for the order (Pix, Credit Card, Bank Slip, NuPay, etc...)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.OrdersAPI.PostOrdersByIdConfirm(context.Background(), id).PostOrdersRequestPayment(postOrdersRequestPayment).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OrdersAPI.PostOrdersByIdConfirm``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PostOrdersByIdConfirm`: PostOrdersByIdConfirm200Response
	fmt.Fprintf(os.Stdout, "Response from `OrdersAPI.PostOrdersByIdConfirm`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPostOrdersByIdConfirmRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **postOrdersRequestPayment** | [**PostOrdersRequestPayment**](PostOrdersRequestPayment.md) | Payment data for the order (Pix, Credit Card, Bank Slip, NuPay, etc...) | 

### Return type

[**PostOrdersByIdConfirm200Response**](PostOrdersByIdConfirm200Response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PostOrdersByIdRefund

> PostOrdersByIdRefund(ctx, id).Execute()

Refund order



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := "id_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.OrdersAPI.PostOrdersByIdRefund(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OrdersAPI.PostOrdersByIdRefund``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPostOrdersByIdRefundRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

 (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

