# PostOrders200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | ID do pedido no sistema | [default to undefined]
**externalId** | **string** | ID externo do pedido (fornecido pela sua integração) | [default to undefined]
**externalIntegrationKey** | **string** | Provedor utilizada para processar o pedido | [default to undefined]
**externalIntegrationId** | **string** | ID do pedido no provedor de pagamento | [default to undefined]
**amount** | **number** | Valor total do pedido | [default to undefined]
**costFee** | **number** | Taxa de custo aplicada ao pedido | [default to undefined]
**pix** | [**PostOrders200ResponsePix**](PostOrders200ResponsePix.md) |  | [optional] [default to undefined]
**bankSlip** | [**PostOrders200ResponseBankSlip**](PostOrders200ResponseBankSlip.md) |  | [optional] [default to undefined]
**nuPay** | [**PostOrders200ResponseNuPay**](PostOrders200ResponseNuPay.md) |  | [optional] [default to undefined]
**picPay** | [**PostOrders200ResponsePicPay**](PostOrders200ResponsePicPay.md) |  | [optional] [default to undefined]
**creditCard** | [**PostOrders200ResponseCreditCard**](PostOrders200ResponseCreditCard.md) |  | [optional] [default to undefined]
**status** | **string** |  | [default to undefined]
**paymentMethod** | **string** |  | [default to undefined]
**payedAt** | **string** | Data e hora em que o pedido foi pago (ISO 8601) | [default to undefined]
**errorCode** | **string** | Código de erro, se houver | [default to undefined]
**errorMessage** | **string** | Mensagem de erro, se houver | [default to undefined]
**orderItems** | [**Array&lt;PostOrders200ResponseOrderItemsInner&gt;**](PostOrders200ResponseOrderItemsInner.md) |  | [default to undefined]
**session** | [**PostOrders200ResponseSession**](PostOrders200ResponseSession.md) |  | [optional] [default to undefined]

## Example

```typescript
import { PostOrders200Response } from './api';

const instance: PostOrders200Response = {
    id,
    externalId,
    externalIntegrationKey,
    externalIntegrationId,
    amount,
    costFee,
    pix,
    bankSlip,
    nuPay,
    picPay,
    creditCard,
    status,
    paymentMethod,
    payedAt,
    errorCode,
    errorMessage,
    orderItems,
    session,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
