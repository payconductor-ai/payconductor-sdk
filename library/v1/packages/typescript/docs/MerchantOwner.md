# MerchantOwner

Dados do proprietário/responsável legal do merchant

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | Nome completo do proprietário | [default to undefined]
**document** | **string** | CPF do proprietário | [default to undefined]
**email** | **string** | Email do proprietário | [optional] [default to undefined]
**phoneNumber** | **string** | Telefone do proprietário | [optional] [default to undefined]
**address** | [**AddressCreateRequest**](AddressCreateRequest.md) |  | [default to undefined]
**birthdate** | **string** | Data de nascimento do proprietário (formato: YYYY-MM-DD) | [default to undefined]

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
