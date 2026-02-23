# CustomerAddressResponse

Customer address information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | Unique address identifier | [default to undefined]
**street** | **string** | Street name | [default to undefined]
**number** | **string** | Address number | [default to undefined]
**neighborhood** | **string** | Neighborhood name | [default to undefined]
**city** | **string** | City name | [default to undefined]
**state** | **string** | State code in ISO 3166-2 format | [default to undefined]
**zipCode** | **string** | ZIP code without formatting | [default to undefined]
**country** | **string** | Country code in ISO 3166-1 alpha-2 format | [default to undefined]

## Example

```typescript
import { CustomerAddressResponse } from '@payconductor/sdk';

const instance: CustomerAddressResponse = {
    id,
    street,
    number,
    neighborhood,
    city,
    state,
    zipCode,
    country,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
