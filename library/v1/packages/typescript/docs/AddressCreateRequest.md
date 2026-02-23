# AddressCreateRequest

Schema for creating a new address

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**city** | **string** | City name | [default to undefined]
**country** | **string** | Country code in ISO 3166-1 alpha-2 format | [default to 'BR']
**neighborhood** | **string** | Neighborhood name | [default to undefined]
**number** | **string** | Address number | [default to undefined]
**state** | **string** | State code in ISO 3166-2 format | [default to undefined]
**street** | **string** | Street name | [default to undefined]
**zipCode** | **string** | ZIP code without formatting | [default to undefined]

## Example

```typescript
import { AddressCreateRequest } from '@payconductor/sdk';

const instance: AddressCreateRequest = {
    city,
    country,
    neighborhood,
    number,
    state,
    street,
    zipCode,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
