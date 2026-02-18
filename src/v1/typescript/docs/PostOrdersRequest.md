# PostOrdersRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chargeAmount** | **number** | Valor total a ser cobrado no pedido em valor flutuante | [default to undefined]
**clientIp** | **string** | Endereço IP do cliente | [default to undefined]
**customer** | [**Cliente**](Cliente.md) |  | [default to undefined]
**discountAmount** | **number** | Valor do desconto | [default to 0]
**externalId** | **string** | ID da ordem no seu sistema | [default to undefined]
**fingerprints** | [**PostOrdersRequestFingerprints**](PostOrdersRequestFingerprints.md) |  | [optional] [default to undefined]
**items** | [**Array&lt;PostOrdersRequestItemsInner&gt;**](PostOrdersRequestItemsInner.md) | Lista de produtos ou serviços do pedido | [optional] [default to undefined]
**merchant** | [**MerchantInput**](MerchantInput.md) |  | [optional] [default to undefined]
**payment** | [**PostOrdersRequestPayment**](PostOrdersRequestPayment.md) |  | [default to undefined]
**splitAmountTotal** | **number** | Valor total do split a ser pago ao merchant (Sendo usado apenas para fins de relatório, ou seja não gera split real) | [optional] [default to undefined]
**session** | [**PostOrdersRequestSession**](PostOrdersRequestSession.md) |  | [optional] [default to undefined]
**shippingFee** | **number** | Valor do frete | [default to 0]
**taxFee** | **number** | Taxas adicionais | [default to 0]
**metadata** | **object** | Metadados adicionais para o pedido como pares chave-valor. Não deve ter espaços ou caracteres especiais nas chaves | [optional] [default to undefined]

## Example

```typescript
import { PostOrdersRequest } from './api';

const instance: PostOrdersRequest = {
    chargeAmount,
    clientIp,
    customer,
    discountAmount,
    externalId,
    fingerprints,
    items,
    merchant,
    payment,
    splitAmountTotal,
    session,
    shippingFee,
    taxFee,
    metadata,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
