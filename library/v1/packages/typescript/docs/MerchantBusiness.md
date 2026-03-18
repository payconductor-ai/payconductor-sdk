# MerchantBusiness


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | Razão social ou nome completo do merchant | [default to undefined]
**document** | **string** | CNPJ ou CPF do merchant | [default to undefined]
**tradeName** | **string** | Nome fantasia do merchant | [optional] [default to undefined]
**email** | **string** | Email principal do merchant | [default to undefined]
**phoneNumber** | **string** | Telefone de contato do merchant | [optional] [default to undefined]
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
