# MerchantFinancialRulesFeesInner

Regras financeiras a serem repassadas para adquirente

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**paymentMethod** | [**PaymentMethod**](PaymentMethod.md) |  | [default to undefined]
**daysDelayForRedeem** | **number** | Número de dias para liberação do valor para saque | [default to undefined]
**items** | [**Array&lt;MerchantFinancialRulesFeesInnerItemsInner&gt;**](MerchantFinancialRulesFeesInnerItemsInner.md) |  | [default to undefined]

## Example

```typescript
import { MerchantFinancialRulesFeesInner } from '@payconductor/sdk';

const instance: MerchantFinancialRulesFeesInner = {
    paymentMethod,
    daysDelayForRedeem,
    items,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
