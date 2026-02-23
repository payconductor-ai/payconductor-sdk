# CardTokenizationCreateRequest

Data for creating a customer card with customer information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**card** | [**CardCreateRequest**](CardCreateRequest.md) |  | [default to undefined]
**saveCard** | **boolean** | Indicates if the card should be saved for future use | [default to undefined]
**customer** | [**CardTokenizationCreateRequestCustomer**](CardTokenizationCreateRequestCustomer.md) |  | [default to undefined]

## Example

```typescript
import { CardTokenizationCreateRequest } from '@payconductor/sdk';

const instance: CardTokenizationCreateRequest = {
    card,
    saveCard,
    customer,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
