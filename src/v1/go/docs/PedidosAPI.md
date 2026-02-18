# \PedidosAPI

All URIs are relative to *https://app.payconductor.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetOrders**](PedidosAPI.md#GetOrders) | **Get** /orders/ | Listar pedidos
[**GetOrdersById**](PedidosAPI.md#GetOrdersById) | **Get** /orders/{id} | Buscar pelo ID
[**PostOrders**](PedidosAPI.md#PostOrders) | **Post** /orders/ | Criar pedido
[**PostOrdersByIdRefund**](PedidosAPI.md#PostOrdersByIdRefund) | **Post** /orders/{id}/refund | Reembolsar pedido



## GetOrders

> GetOrders(ctx).Period(period).Page(page).PageSize(pageSize).EndDate(endDate).StartDate(startDate).Id(id).Status(status).Execute()

Listar pedidos



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
	period := "period_example" // string |  (default to "Last7Days")
	page := float32(8.14) // float32 |  (default to 1)
	pageSize := float32(8.14) // float32 |  (default to 20)
	endDate := time.Now() // time.Time |  (optional)
	startDate := time.Now() // time.Time |  (optional)
	id := "id_example" // string |  (optional)
	status := "status_example" // string |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.PedidosAPI.GetOrders(context.Background()).Period(period).Page(page).PageSize(pageSize).EndDate(endDate).StartDate(startDate).Id(id).Status(status).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `PedidosAPI.GetOrders``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiGetOrdersRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **period** | **string** |  | [default to &quot;Last7Days&quot;]
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

Buscar pelo ID



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
	r, err := apiClient.PedidosAPI.GetOrdersById(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `PedidosAPI.GetOrdersById``: %v\n", err)
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

Criar pedido



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
	postOrdersRequest := *openapiclient.NewPostOrdersRequest(float32(123), "ClientIp_example", *openapiclient.NewCliente("DocumentNumber_example", "DocumentType_example", "Email_example", "Name_example"), float32(123), "ExternalId_example", *openapiclient.NewPostOrdersRequestPayment("PaymentMethod_example", *openapiclient.NewCartODeCrDitoCard("Token_example", "Cvv_example", *openapiclient.NewDadosCompletosDoCartOExpiration(float32(123), float32(123)), "HolderName_example", "Number_example"), *openapiclient.NewCartODeCrDitoInstallments(), *openapiclient.NewNuPayNuPay("CancelUrl_example", "MerchantName_example", "ReturnUrl_example")), float32(123), float32(123)) // PostOrdersRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.PedidosAPI.PostOrders(context.Background()).PostOrdersRequest(postOrdersRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `PedidosAPI.PostOrders``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PostOrders`: PostOrders200Response
	fmt.Fprintf(os.Stdout, "Response from `PedidosAPI.PostOrders`: %v\n", resp)
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


## PostOrdersByIdRefund

> PostOrdersByIdRefund(ctx, id).Execute()

Reembolsar pedido



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
	r, err := apiClient.PedidosAPI.PostOrdersByIdRefund(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `PedidosAPI.PostOrdersByIdRefund``: %v\n", err)
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

