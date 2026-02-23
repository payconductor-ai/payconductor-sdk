# CustomerReadResponse

Customer response with complete information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | Unique customer identifier | [default to undefined]
**name** | **string** | Customer full name | [default to undefined]
**email** | **string** | Customer email | [default to undefined]
**documentType** | [**DocumentType**](DocumentType.md) |  | [default to undefined]
**documentNumber** | **string** | Customer CPF or CNPJ without formatting | [default to undefined]
**phoneNumber** | **string** | Customer phone number in +55 DD 9XXXXXXXX format | [default to undefined]
**address** | [**CustomerAddressResponse**](CustomerAddressResponse.md) |  | [default to undefined]
**createdAt** | **string** | Date and time when the customer was created (ISO 8601 format) | [default to undefined]
**updatedAt** | **string** | Date and time when the customer was last updated (ISO 8601 format) | [default to undefined]

## Example

```typescript
import { CustomerReadResponse } from '@payconductor/sdk';

const instance: CustomerReadResponse = {
    id,
    name,
    email,
    documentType,
    documentNumber,
    phoneNumber,
    address,
    createdAt,
    updatedAt,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
