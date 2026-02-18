# CartODeCrDito


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**paymentMethod** | **string** |  | [default to undefined]
**card** | [**CartODeCrDitoCard**](CartODeCrDitoCard.md) |  | [default to undefined]
**installments** | [**CartODeCrDitoInstallments**](CartODeCrDitoInstallments.md) |  | [default to undefined]
**softDescriptor** | **string** | Texto que aparecerá na fatura do cartão (soft descriptor) | [optional] [default to undefined]

## Example

```typescript
import { CartODeCrDito } from './api';

const instance: CartODeCrDito = {
    paymentMethod,
    card,
    installments,
    softDescriptor,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
