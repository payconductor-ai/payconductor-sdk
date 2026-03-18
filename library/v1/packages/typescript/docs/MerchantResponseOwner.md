# MerchantResponseOwner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | Nome completo do proprietário | [default to undefined]
**document** | **string** | CPF do proprietário | [default to undefined]
**email** | **string** | Email do proprietário | [default to undefined]
**phoneNumber** | **string** | Telefone do proprietário | [default to undefined]
**birthdate** | **string** | Data de nascimento do proprietário (formato: YYYY-MM-DD) | [default to undefined]
**address** | [**AddressCreateRequest1**](AddressCreateRequest1.md) |  | [default to undefined]

## Example

```typescript
import { MerchantResponseOwner } from '@payconductor/sdk';

const instance: MerchantResponseOwner = {
    name,
    document,
    email,
    phoneNumber,
    birthdate,
    address,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
