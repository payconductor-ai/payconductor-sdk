# MerchantData

Merchant data for order or withdrawal

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**document** | **string** | Merchant CPF or CNPJ without formatting | [default to undefined]
**email** | **string** | Merchant email | [default to undefined]
**name** | **string** | Merchant name | [default to undefined]

## Example

```typescript
import { MerchantData } from '@payconductor/sdk';

const instance: MerchantData = {
    document,
    email,
    name,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
