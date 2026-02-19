# \CardTokenizationAPI

All URIs are relative to *https://app.payconductor.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**PostCardTokenization**](CardTokenizationAPI.md#PostCardTokenization) | **Post** /card-tokenization/ | Tokenize card



## PostCardTokenization

> PostCardTokenization200Response PostCardTokenization(ctx).PostCardTokenizationRequest(postCardTokenizationRequest).Execute()

Tokenize card



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
	postCardTokenizationRequest := *openapiclient.NewPostCardTokenizationRequest(*openapiclient.NewCompleteCardData("Cvv_example", *openapiclient.NewCompleteCardDataExpiration(float32(123), float32(123)), "HolderName_example", "Number_example"), false, *openapiclient.NewPostCardTokenizationRequestCustomer("DocumentNumber_example", openapiclient.DocumentType("Cpf"), "Email_example", "Name_example", "Id_example")) // PostCardTokenizationRequest | Data for creating a customer card

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.CardTokenizationAPI.PostCardTokenization(context.Background()).PostCardTokenizationRequest(postCardTokenizationRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `CardTokenizationAPI.PostCardTokenization``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PostCardTokenization`: PostCardTokenization200Response
	fmt.Fprintf(os.Stdout, "Response from `CardTokenizationAPI.PostCardTokenization`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiPostCardTokenizationRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postCardTokenizationRequest** | [**PostCardTokenizationRequest**](PostCardTokenizationRequest.md) | Data for creating a customer card | 

### Return type

[**PostCardTokenization200Response**](PostCardTokenization200Response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

