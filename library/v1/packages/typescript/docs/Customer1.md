# Customer1

Schema for creating a new customer

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | [**CustomerAddress**](CustomerAddress.md) |  | [optional] [default to undefined]
**documentNumber** | **string** | Customer CPF or CNPJ without formatting | [optional] [default to undefined]
**documentType** | **string** |  | [optional] [default to undefined]
**email** | **string** | Customer email | [optional] [default to undefined]
**name** | **string** | Customer full name | [optional] [default to undefined]
**phoneNumber** | **string** | Customer phone number in +55 DD 9XXXXXXXX format | [optional] [default to undefined]

## Example

```typescript
import { Customer1 } from 'payconductor-sdk';

const instance: Customer1 = {
    address,
    documentNumber,
    documentType,
    email,
    name,
    phoneNumber,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
