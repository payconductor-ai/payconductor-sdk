# PostOrdersRequestSession

Caso o externalSessionId ou sessionId sejam fornecidos e houver uma sessão existente, ela será atualizada com os novos dados. Caso contrário, uma nova sessão será criada.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**expiresInMinutes** | **number** | Tempo em minutos para expiração da sessão do checkout | [optional] [default to 30]
**checkoutUrl** | **string** | URL do checkout para que possamos redirecionar | [optional] [default to undefined]
**sessionId** | **string** | Id gerado pelo nosso serviço para identificar a sessão de checkout | [optional] [default to undefined]
**externalSessionId** | **string** | Id da sessão de checkout gerado pelo lado do cliente. O id deve ser único para cada sessão de carrinho | [optional] [default to undefined]

## Example

```typescript
import { PostOrdersRequestSession } from './api';

const instance: PostOrdersRequestSession = {
    expiresInMinutes,
    checkoutUrl,
    sessionId,
    externalSessionId,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
