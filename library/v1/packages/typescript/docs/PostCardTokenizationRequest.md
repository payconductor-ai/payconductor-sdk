# PostCardTokenizationRequest

Data for creating a customer card

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**card** | [**CompleteCardData**](CompleteCardData.md) |  | [default to undefined]
**saveCard** | **boolean** | Indicates if the card should be saved for future use | [default to undefined]
**customer** | [**PostCardTokenizationRequestCustomer**](PostCardTokenizationRequestCustomer.md) |  | [default to undefined]

## Example

```typescript
import { PostCardTokenizationRequest } from 'payconductor-sdk';

const instance: PostCardTokenizationRequest = {
    card,
    saveCard,
    customer,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
