# Org.OpenAPITools.Model.PostOrdersRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ChargeAmount** | **decimal** | Valor total a ser cobrado no pedido em valor flutuante | 
**ClientIp** | **string** | Endereço IP do cliente | 
**Customer** | [**Cliente**](Cliente.md) |  | 
**ExternalId** | **string** | ID da ordem no seu sistema | 
**Payment** | [**PostOrdersRequestPayment**](PostOrdersRequestPayment.md) |  | 
**DiscountAmount** | **decimal** | Valor do desconto | [default to 0M]
**Fingerprints** | [**PostOrdersRequestFingerprints**](PostOrdersRequestFingerprints.md) |  | [optional] 
**Items** | [**List&lt;PostOrdersRequestItemsInner&gt;**](PostOrdersRequestItemsInner.md) | Lista de produtos ou serviços do pedido | [optional] 
**Merchant** | [**MerchantInput**](MerchantInput.md) |  | [optional] 
**SplitAmountTotal** | **decimal** | Valor total do split a ser pago ao merchant (Sendo usado apenas para fins de relatório, ou seja não gera split real) | [optional] 
**Session** | [**PostOrdersRequestSession**](PostOrdersRequestSession.md) |  | [optional] 
**ShippingFee** | **decimal** | Valor do frete | [default to 0M]
**TaxFee** | **decimal** | Taxas adicionais | [default to 0M]
**Metadata** | **Object** | Metadados adicionais para o pedido como pares chave-valor. Não deve ter espaços ou caracteres especiais nas chaves | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

