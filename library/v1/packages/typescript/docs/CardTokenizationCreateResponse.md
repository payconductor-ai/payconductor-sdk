# CardTokenizationCreateResponse

Response containing customer ID and card token

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customerId** | **string** | ID of the customer associated with the created card | [default to undefined]
**token** | **string** | Token of the created card for future transactions | [default to undefined]

## Example

```typescript
import { CardTokenizationCreateResponse } from '@payconductor/sdk';

const instance: CardTokenizationCreateResponse = {
    customerId,
    token,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
