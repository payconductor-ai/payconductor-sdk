# CompleteCardData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cvv** | **string** | Card security code (CVV) | [default to undefined]
**expiration** | [**CompleteCardDataExpiration**](CompleteCardDataExpiration.md) |  | [default to undefined]
**holderName** | **string** | Card holder name | [default to undefined]
**number** | **string** | Credit card number | [default to undefined]

## Example

```typescript
import { CompleteCardData } from 'payconductor-sdk';

const instance: CompleteCardData = {
    cvv,
    expiration,
    holderName,
    number,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
