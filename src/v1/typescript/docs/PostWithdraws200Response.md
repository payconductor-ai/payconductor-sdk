# PostWithdraws200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | Identificador único do saque | [default to undefined]
**externalId** | **string** | ID do saque no sistema no seu sistema | [default to undefined]
**externalIntegrationKey** | **string** | Chave do provedor utilizado para o saque | [default to undefined]
**externalIntegrationId** | **string** | ID do saque no provedor de pagamento | [default to undefined]
**costFee** | **number** | Taxa de custo aplicada ao saque | [default to undefined]
**status** | **string** | Status do saque | [default to StatusEnum_Pending]
**errorCode** | **string** | Código do erro, se houver | [default to undefined]
**errorMessage** | **string** | Mensagem descritiva do erro, se houver | [default to undefined]
**payedAt** | [**PostWithdraws200ResponsePayedAt**](PostWithdraws200ResponsePayedAt.md) |  | [default to undefined]
**payoutAccount** | [**PostWithdraws200ResponsePayoutAccount**](PostWithdraws200ResponsePayoutAccount.md) |  | [default to undefined]

## Example

```typescript
import { PostWithdraws200Response } from './api';

const instance: PostWithdraws200Response = {
    id,
    externalId,
    externalIntegrationKey,
    externalIntegrationId,
    costFee,
    status,
    errorCode,
    errorMessage,
    payedAt,
    payoutAccount,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
