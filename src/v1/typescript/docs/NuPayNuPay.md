# NuPayNuPay

Dados específicos para pagamento via NuPay

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cancelUrl** | **string** | URL de cancelamento do pagamento | [default to undefined]
**merchantName** | **string** | Nome do comerciante | [default to undefined]
**returnUrl** | **string** | URL de retorno após a conclusão do pagamento | [default to undefined]
**storeName** | **string** | Nome da loja | [optional] [default to undefined]

## Example

```typescript
import { NuPayNuPay } from './api';

const instance: NuPayNuPay = {
    cancelUrl,
    merchantName,
    returnUrl,
    storeName,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
