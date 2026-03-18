# Merchant

Modelo para criação de merchant com todos os dados necessários

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**personType** | [**PersonType**](PersonType.md) |  | [optional] [default to undefined]
**productsDescription** | **string** | Descrição dos produtos ou serviços oferecidos | [optional] [default to undefined]
**mcc** | **string** | Merchant Category Code | [optional] [default to undefined]
**website** | **string** | URL do site do merchant | [default to undefined]
**business** | [**MerchantBusiness**](MerchantBusiness.md) |  | [default to undefined]
**owner** | [**MerchantOwner**](MerchantOwner.md) |  | [default to undefined]
**payoutAccount** | [**MerchantPayoutAccount**](MerchantPayoutAccount.md) |  | [default to undefined]
**financialRules** | [**MerchantFinancialRules**](MerchantFinancialRules.md) |  | [optional] [default to undefined]

## Example

```typescript
import { Merchant } from '@payconductor/sdk';

const instance: Merchant = {
    personType,
    productsDescription,
    mcc,
    website,
    business,
    owner,
    payoutAccount,
    financialRules,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
