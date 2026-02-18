# PostWithdraws200ResponsePayoutAccount


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | Identificador único da conta de pagamento | [default to undefined]
**ownerDocument** | **string** | Documento do titular da conta (CPF ou CNPJ) | [default to undefined]
**ownerName** | **string** | Nome do titular da conta | [default to undefined]
**pixKey** | **string** | Chave PIX utilizada para o saque | [default to undefined]
**pixType** | **string** | Tipo da chave PIX | [default to PixTypeEnum_Cpf]

## Example

```typescript
import { PostWithdraws200ResponsePayoutAccount } from './api';

const instance: PostWithdraws200ResponsePayoutAccount = {
    id,
    ownerDocument,
    ownerName,
    pixKey,
    pixType,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
