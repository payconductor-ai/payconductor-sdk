# MerchantResponse

Modelo de resposta com todos os dados do merchant

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | ID único do merchant | [default to undefined]
**productsDescription** | **string** | Descrição dos produtos ou serviços oferecidos | [default to undefined]
**mcc** | **string** | Merchant Category Code | [default to undefined]
**website** | **string** | URL do site do merchant | [default to undefined]
**status** | [**Status**](Status.md) |  | [default to undefined]
**errorMessage** | **string** | Mensagem de erro caso a criação da subconta tenha falhado | [default to undefined]
**bussiness** | [**MerchantResponseBussiness**](MerchantResponseBussiness.md) |  | [default to undefined]
**owner** | [**MerchantResponseOwner**](MerchantResponseOwner.md) |  | [default to undefined]
**payoutAccounts** | [**MerchantResponsePayoutAccounts**](MerchantResponsePayoutAccounts.md) |  | [default to undefined]
**subaccounts** | [**Array&lt;MerchantResponseSubaccountsInner&gt;**](MerchantResponseSubaccountsInner.md) |  | [default to undefined]
**financialRules** | [**MerchantResponseFinancialRules**](MerchantResponseFinancialRules.md) |  | [default to undefined]

## Example

```typescript
import { MerchantResponse } from '@payconductor/sdk';

const instance: MerchantResponse = {
    id,
    productsDescription,
    mcc,
    website,
    status,
    errorMessage,
    bussiness,
    owner,
    payoutAccounts,
    subaccounts,
    financialRules,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
