# PostCardTokenizationRequestCustomer


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | [**CustomerAddress**](CustomerAddress.md) |  | [optional] [default to undefined]
**documentNumber** | **string** | Customer CPF or CNPJ without formatting | [default to undefined]
**documentType** | [**Customer2DocumentType**](Customer2DocumentType.md) |  | [default to undefined]
**email** | **string** | Customer email | [default to undefined]
**name** | **string** | Customer full name | [default to undefined]
**phoneNumber** | **string** | Customer phone number in +55 DD 9XXXXXXXX format | [optional] [default to undefined]
**id** | **string** | ID do cliente existente | [default to undefined]

## Example

```typescript
import { PostCardTokenizationRequestCustomer } from 'payconductor-sdk';

const instance: PostCardTokenizationRequestCustomer = {
    address,
    documentNumber,
    documentType,
    email,
    name,
    phoneNumber,
    id,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
