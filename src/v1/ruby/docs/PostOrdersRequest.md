# OpenapiClient::PostOrdersRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **charge_amount** | **Float** | Valor total a ser cobrado no pedido em valor flutuante |  |
| **client_ip** | **String** | Endereço IP do cliente |  |
| **customer** | [**Cliente**](Cliente.md) |  |  |
| **discount_amount** | **Float** | Valor do desconto | [default to 0] |
| **external_id** | **String** | ID da ordem no seu sistema |  |
| **fingerprints** | [**PostOrdersRequestFingerprints**](PostOrdersRequestFingerprints.md) |  | [optional] |
| **items** | [**Array&lt;PostOrdersRequestItemsInner&gt;**](PostOrdersRequestItemsInner.md) | Lista de produtos ou serviços do pedido | [optional] |
| **merchant** | [**MerchantInput**](MerchantInput.md) |  | [optional] |
| **payment** | [**PostOrdersRequestPayment**](PostOrdersRequestPayment.md) |  |  |
| **split_amount_total** | **Float** | Valor total do split a ser pago ao merchant (Sendo usado apenas para fins de relatório, ou seja não gera split real) | [optional] |
| **session** | [**PostOrdersRequestSession**](PostOrdersRequestSession.md) |  | [optional] |
| **shipping_fee** | **Float** | Valor do frete | [default to 0] |
| **tax_fee** | **Float** | Taxas adicionais | [default to 0] |
| **metadata** | **Object** | Metadados adicionais para o pedido como pares chave-valor. Não deve ter espaços ou caracteres especiais nas chaves | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PostOrdersRequest.new(
  charge_amount: null,
  client_ip: null,
  customer: null,
  discount_amount: null,
  external_id: null,
  fingerprints: null,
  items: null,
  merchant: null,
  payment: null,
  split_amount_total: null,
  session: null,
  shipping_fee: null,
  tax_fee: null,
  metadata: null
)
```

