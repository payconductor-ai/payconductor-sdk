# MerchantBusiness


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | Merchant legal name or full name | [default to undefined]
**document** | **string** | Merchant CNPJ or CPF | [default to undefined]
**tradeName** | **string** | Merchant trade name | [optional] [default to undefined]
**email** | **string** | Merchant main email | [default to undefined]
**phoneNumber** | **string** | Merchant contact phone number | [optional] [default to undefined]
**address** | [**AddressCreateRequest**](AddressCreateRequest.md) |  | [default to undefined]

## Example

```typescript
import { MerchantBusiness } from '@payconductor/sdk';

const instance: MerchantBusiness = {
    name,
    document,
    tradeName,
    email,
    phoneNumber,
    address,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
