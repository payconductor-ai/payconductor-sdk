# MerchantResponseBussiness


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | Razão social ou nome completo do merchant | [default to undefined]
**document** | **string** | CNPJ ou CPF do merchant | [default to undefined]
**email** | **string** | Email principal do merchant | [default to undefined]
**phoneNumber** | **string** | Telefone de contato do merchant | [default to undefined]
**tradeName** | **string** | Nome fantasia do merchant | [default to undefined]
**address** | [**AddressCreateRequest1**](AddressCreateRequest1.md) |  | [default to undefined]

## Example

```typescript
import { MerchantResponseBussiness } from '@payconductor/sdk';

const instance: MerchantResponseBussiness = {
    name,
    document,
    email,
    phoneNumber,
    tradeName,
    address,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
