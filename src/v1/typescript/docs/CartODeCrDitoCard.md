# CartODeCrDitoCard


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**firstSixCardNumber** | **string** | Primeiros 6 dígitos do cartão de crédito | [optional] [default to undefined]
**token** | **string** | Token do cartão de crédito gerado anteriormente | [default to undefined]
**cvv** | **string** | Código de segurança do cartão (CVV) | [default to undefined]
**expiration** | [**DadosCompletosDoCartOExpiration**](DadosCompletosDoCartOExpiration.md) |  | [default to undefined]
**holderName** | **string** | Nome do titular do cartão | [default to undefined]
**number** | **string** | Número do cartão de crédito | [default to undefined]

## Example

```typescript
import { CartODeCrDitoCard } from './api';

const instance: CartODeCrDitoCard = {
    firstSixCardNumber,
    token,
    cvv,
    expiration,
    holderName,
    number,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
