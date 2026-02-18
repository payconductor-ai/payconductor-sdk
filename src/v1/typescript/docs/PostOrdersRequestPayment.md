# PostOrdersRequestPayment

Dados de pagamento para o pedido (Pix, Cartão de Crédito, Boleto, NuPay, etc...)

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**paymentMethod** | **string** |  | [default to undefined]
**expirationInSeconds** | [**PixExpirationInSeconds**](PixExpirationInSeconds.md) |  | [optional] [default to undefined]
**card** | [**CartODeCrDitoCard**](CartODeCrDitoCard.md) |  | [default to undefined]
**installments** | [**CartODeCrDitoInstallments**](CartODeCrDitoInstallments.md) |  | [default to undefined]
**softDescriptor** | **string** | Texto que aparecerá na fatura do cartão (soft descriptor) | [optional] [default to undefined]
**expirationInDays** | [**BoletoExpirationInDays**](BoletoExpirationInDays.md) |  | [optional] [default to undefined]
**nuPay** | [**NuPayNuPay**](NuPayNuPay.md) |  | [default to undefined]

## Example

```typescript
import { PostOrdersRequestPayment } from './api';

const instance: PostOrdersRequestPayment = {
    paymentMethod,
    expirationInSeconds,
    card,
    installments,
    softDescriptor,
    expirationInDays,
    nuPay,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
