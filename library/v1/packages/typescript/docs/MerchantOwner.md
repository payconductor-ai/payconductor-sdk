# MerchantOwner

Merchant owner/legal representative data

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | Owner full name | [default to undefined]
**document** | **string** | Owner CPF | [default to undefined]
**email** | **string** | Owner email | [optional] [default to undefined]
**phoneNumber** | **string** | Owner phone number | [optional] [default to undefined]
**address** | [**AddressCreateRequest**](AddressCreateRequest.md) |  | [default to undefined]
**birthdate** | **string** | Owner birth date (format: YYYY-MM-DD) | [default to undefined]

## Example

```typescript
import { MerchantOwner } from '@payconductor/sdk';

const instance: MerchantOwner = {
    name,
    document,
    email,
    phoneNumber,
    address,
    birthdate,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
