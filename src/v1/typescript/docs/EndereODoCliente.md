# EndereODoCliente

Schema para criação de um novo endereço

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**city** | **string** | Nome da cidade | [default to undefined]
**country** | **string** | Código do país no formato ISO 3166-1 alpha-2 | [default to 'BR']
**neighborhood** | **string** | Nome do bairro | [default to undefined]
**number** | **string** | Número do endereço | [default to undefined]
**state** | **string** | Código do estado no formato ISO 3166-2 | [default to undefined]
**street** | **string** | Nome da rua | [default to undefined]
**zipCode** | **string** | CEP sem formatação | [default to undefined]

## Example

```typescript
import { EndereODoCliente } from './api';

const instance: EndereODoCliente = {
    city,
    country,
    neighborhood,
    number,
    state,
    street,
    zipCode,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
