# OrderRoutingData

Routing data to define specific integrations to process the order

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**directIntegrationId** | **string** | ID of a specific integration to process the order. Used to force the order to be processed by a specific integration, bypassing the default routing configuration | [optional] [default to undefined]

## Example

```typescript
import { OrderRoutingData } from '@payconductor/sdk';

const instance: OrderRoutingData = {
    directIntegrationId,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
