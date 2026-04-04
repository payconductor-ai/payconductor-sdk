# Merchant

Model for merchant creation with all required data

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**personType** | [**PersonType**](PersonType.md) |  | [optional] [default to undefined]
**productsDescription** | **string** | Description of products or services offered | [optional] [default to undefined]
**mcc** | **string** | Merchant Category Code | [optional] [default to undefined]
**website** | **string** | Merchant website URL | [default to undefined]
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
