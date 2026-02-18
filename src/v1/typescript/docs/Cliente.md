# Cliente

Schema para criação de um novo cliente

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | [**EndereODoCliente**](EndereODoCliente.md) |  | [optional] [default to undefined]
**documentNumber** | **string** | CPF ou CNPJ do cliente sem formatação | [default to undefined]
**documentType** | **string** |  | [default to undefined]
**email** | **string** | Email do cliente | [default to undefined]
**name** | **string** | Nome completo do cliente | [default to undefined]
**phoneNumber** | **string** | Número de telefone do cliente no formato +55 DD 9XXXXXXXX | [optional] [default to undefined]

## Example

```typescript
import { Cliente } from './api';

const instance: Cliente = {
    address,
    documentNumber,
    documentType,
    email,
    name,
    phoneNumber,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
