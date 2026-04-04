# SubscriptionCycles

List of billing cycles for the subscription

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | Unique cycle identifier | [default to undefined]
**cycleNumber** | **number** | Sequential cycle number | [default to undefined]
**status** | [**Status**](Status.md) |  | [default to undefined]
**scheduledAt** | **string** | Date and time when the cycle was scheduled (ISO 8601) | [default to undefined]
**processedAt** | **string** | Date and time when the cycle was processed (ISO 8601) | [default to undefined]
**order** | [**SubscriptionCyclesOrder**](SubscriptionCyclesOrder.md) |  | [default to undefined]

## Example

```typescript
import { SubscriptionCycles } from '@payconductor/sdk';

const instance: SubscriptionCycles = {
    id,
    cycleNumber,
    status,
    scheduledAt,
    processedAt,
    order,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
