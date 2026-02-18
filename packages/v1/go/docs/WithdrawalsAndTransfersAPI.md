# \WithdrawalsAndTransfersAPI

All URIs are relative to *https://app.payconductor.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetWithdraws**](WithdrawalsAndTransfersAPI.md#GetWithdraws) | **Get** /withdraws/ | List withdrawals
[**GetWithdrawsById**](WithdrawalsAndTransfersAPI.md#GetWithdrawsById) | **Get** /withdraws/{id} | Get withdrawal by ID
[**PostWithdraws**](WithdrawalsAndTransfersAPI.md#PostWithdraws) | **Post** /withdraws/ | Create withdrawal



## GetWithdraws

> GetWithdraws(ctx).Period(period).Page(page).PageSize(pageSize).EndDate(endDate).StartDate(startDate).Id(id).Execute()

List withdrawals



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

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.WithdrawalsAndTransfersAPI.GetWithdraws(context.Background()).Period(period).Page(page).PageSize(pageSize).EndDate(endDate).StartDate(startDate).Id(id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `WithdrawalsAndTransfersAPI.GetWithdraws``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiGetWithdrawsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **period** | **string** |  | [default to &quot;Last7Days&quot;]
 **page** | **float32** |  | [default to 1]
 **pageSize** | **float32** |  | [default to 20]
 **endDate** | **time.Time** |  | 
 **startDate** | **time.Time** |  | 
 **id** | **string** |  | 

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


## GetWithdrawsById

> GetWithdrawsById(ctx, id).Execute()

Get withdrawal by ID



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
	r, err := apiClient.WithdrawalsAndTransfersAPI.GetWithdrawsById(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `WithdrawalsAndTransfersAPI.GetWithdrawsById``: %v\n", err)
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

Other parameters are passed through a pointer to a apiGetWithdrawsByIdRequest struct via the builder pattern


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


## PostWithdraws

> PostWithdraws200Response PostWithdraws(ctx).PostWithdrawsRequest(postWithdrawsRequest).Execute()

Create withdrawal



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
	postWithdrawsRequest := *openapiclient.NewPostWithdrawsRequest(float32(123), *openapiclient.NewPostWithdrawsRequestPayoutAccount("OwnerDocument_example", "OwnerName_example", "PixKey_example", "PixType_example")) // PostWithdrawsRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.WithdrawalsAndTransfersAPI.PostWithdraws(context.Background()).PostWithdrawsRequest(postWithdrawsRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `WithdrawalsAndTransfersAPI.PostWithdraws``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PostWithdraws`: PostWithdraws200Response
	fmt.Fprintf(os.Stdout, "Response from `WithdrawalsAndTransfersAPI.PostWithdraws`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiPostWithdrawsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postWithdrawsRequest** | [**PostWithdrawsRequest**](PostWithdrawsRequest.md) |  | 

### Return type

[**PostWithdraws200Response**](PostWithdraws200Response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

