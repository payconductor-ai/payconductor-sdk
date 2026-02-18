# Org.OpenAPITools.Api.SaquesETransfernciasApi

All URIs are relative to *https://app.payconductor.ai/api/v1*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**GetWithdraws**](SaquesETransfernciasApi.md#getwithdraws) | **GET** /withdraws/ | Lista os saques |
| [**GetWithdrawsById**](SaquesETransfernciasApi.md#getwithdrawsbyid) | **GET** /withdraws/{id} | Buscar pelo ID |
| [**PostWithdraws**](SaquesETransfernciasApi.md#postwithdraws) | **POST** /withdraws/ | Cria saque |

<a id="getwithdraws"></a>
# **GetWithdraws**
> void GetWithdraws (string period, decimal page, decimal pageSize, DateTime endDate = null, DateTime startDate = null, string id = null)

Lista os saques

Retorna uma lista paginada de saques e transferências. Permite filtrar por data de criação ou buscar por ID (ID do saque, ID externo, ID da adquirente ou End2EndID)


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **period** | **string** |  | [default to Last7Days] |
| **page** | **decimal** |  | [default to 1M] |
| **pageSize** | **decimal** |  | [default to 20M] |
| **endDate** | **DateTime** |  | [optional]  |
| **startDate** | **DateTime** |  | [optional]  |
| **id** | **string** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getwithdrawsbyid"></a>
# **GetWithdrawsById**
> void GetWithdrawsById (string id)

Buscar pelo ID

Retorna os detalhes de um saque ou transferência específico usando seu ID


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **string** |  |  |

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="postwithdraws"></a>
# **PostWithdraws**
> PostWithdraws200Response PostWithdraws (PostWithdrawsRequest postWithdrawsRequest)

Cria saque

Realiza um novo saque ou transferência para a conta de pagamento informada


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **postWithdrawsRequest** | [**PostWithdrawsRequest**](PostWithdrawsRequest.md) |  |  |

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
| **200** | Response for status 200 |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

