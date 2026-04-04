# CreateSubscriptionSubscription


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**periodicity** | [**Periodicity**](Periodicity.md) |  | [default to undefined]
**periodicityInterval** | **number** | Number of period units between each charge (e.g. 2 &#x3D; every 2 months) | [optional] [default to 1]
**maxCycles** | **number** | Maximum number of billing cycles. Leave empty for unlimited | [optional] [default to undefined]
**startAt** | **string** | Date and time to start the subscription (ISO 8601). Defaults to now | [optional] [default to undefined]

## Example

```typescript
import { CreateSubscriptionSubscription } from '@payconductor/sdk';

const instance: CreateSubscriptionSubscription = {
    periodicity,
    periodicityInterval,
    maxCycles,
    startAt,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
