# SubscriptionCyclesOrder


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | Order ID generated for this cycle | [default to undefined]
**externalId** | **string** | External order ID (provided by your integration) | [default to undefined]
**status** | [**Status**](Status.md) |  | [default to undefined]
**externalIntegrationKey** | **string** | Provider used to process the order | [default to undefined]
**externalIntegrationId** | **string** | Order ID in the payment provider | [default to undefined]

## Example

```typescript
import { SubscriptionCyclesOrder } from '@payconductor/sdk';

const instance: SubscriptionCyclesOrder = {
    id,
    externalId,
    status,
    externalIntegrationKey,
    externalIntegrationId,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
