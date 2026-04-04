# SubscriptionResponse

Response with all recurring subscription data

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | Unique subscription identifier | [default to undefined]
**status** | [**Status**](Status.md) |  | [default to undefined]
**externalId** | **string** | External subscription ID (provided by the merchant) | [default to undefined]
**amount** | **number** | Amount charged each cycle (in the specified currency) | [default to undefined]
**currency** | **string** | Billing currency (ISO 4217) | [default to undefined]
**periodicity** | [**Periodicity**](Periodicity.md) |  | [default to undefined]
**periodicityInterval** | **number** | Interval between charges (e.g. 2 &#x3D; every 2 months) | [default to undefined]
**currentCycle** | **number** | Current cycle number | [default to undefined]
**maxCycles** | **number** | Maximum number of cycles (null &#x3D; unlimited) | [default to undefined]
**dunningAttempts** | **number** | Number of failed billing attempts in the current cycle | [default to undefined]
**startedAt** | **string** | Subscription start date and time (ISO 8601) | [default to undefined]
**nextChargeAt** | **string** | Next charge date and time (ISO 8601) | [default to undefined]
**canceledAt** | **string** | Cancellation date and time (ISO 8601) | [default to undefined]
**reason** | [**Reason**](Reason.md) |  | [optional] [default to undefined]
**metadata** | **object** | Additional metadata provided by the merchant | [default to undefined]
**originOrderId** | **string** | ID of the order that originated the subscription (first charge) | [default to undefined]
**customer** | [**SubscriptionCustomer**](SubscriptionCustomer.md) |  | [default to undefined]
**cycles** | [**Array&lt;SubscriptionCycles&gt;**](SubscriptionCycles.md) | List of billing cycles for the subscription | [default to undefined]
**createdAt** | **string** | Subscription creation date and time (ISO 8601) | [default to undefined]
**updatedAt** | **string** | Last update date and time (ISO 8601) | [default to undefined]

## Example

```typescript
import { SubscriptionResponse } from '@payconductor/sdk';

const instance: SubscriptionResponse = {
    id,
    status,
    externalId,
    amount,
    currency,
    periodicity,
    periodicityInterval,
    currentCycle,
    maxCycles,
    dunningAttempts,
    startedAt,
    nextChargeAt,
    canceledAt,
    reason,
    metadata,
    originOrderId,
    customer,
    cycles,
    createdAt,
    updatedAt,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
