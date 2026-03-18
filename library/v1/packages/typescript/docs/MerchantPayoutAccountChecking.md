# MerchantPayoutAccountChecking

Dados da conta bancária para recebimento

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accountNumber** | **string** | Número da conta com dígito | [default to undefined]
**routingNumber** | **string** | Código do banco + número da agência + dígito | [default to undefined]

## Example

```typescript
import { MerchantPayoutAccountChecking } from '@payconductor/sdk';

const instance: MerchantPayoutAccountChecking = {
    accountNumber,
    routingNumber,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
