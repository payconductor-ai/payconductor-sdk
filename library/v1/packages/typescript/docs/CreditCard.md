# CreditCard


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**paymentMethod** | **string** |  | [default to undefined]
**card** | [**CreditCardCard**](CreditCardCard.md) |  | [default to undefined]
**installments** | [**CreditCardInstallments**](CreditCardInstallments.md) |  | [default to undefined]
**softDescriptor** | **string** | Text that will appear on the card statement (soft descriptor) | [optional] [default to undefined]

## Example

```typescript
import { CreditCard } from 'payconductor-sdk';

const instance: CreditCard = {
    paymentMethod,
    card,
    installments,
    softDescriptor,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
