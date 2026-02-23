# OrderCreateResponse

Response after creating an order

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | Order ID in the system | [default to undefined]
**externalId** | **string** | External order ID (provided by your integration) | [default to undefined]
**externalIntegrationKey** | **string** | Provider used to process the order | [default to undefined]
**externalIntegrationId** | **string** | Order ID in the payment provider | [default to undefined]
**amount** | **number** | Total order amount | [default to undefined]
**costFee** | **number** | Cost fee applied to the order | [default to undefined]
**pix** | [**OrderPIXInfo**](OrderPIXInfo.md) |  | [optional] [default to undefined]
**bankSlip** | [**OrderBankSlipInfo**](OrderBankSlipInfo.md) |  | [optional] [default to undefined]
**nuPay** | [**OrderNuPayInfo**](OrderNuPayInfo.md) |  | [optional] [default to undefined]
**picPay** | [**OrderPicPayInfo**](OrderPicPayInfo.md) |  | [optional] [default to undefined]
**creditCard** | [**OrderCreditCardInfo**](OrderCreditCardInfo.md) |  | [optional] [default to undefined]
**status** | [**Status**](Status.md) |  | [default to undefined]
**paymentMethod** | [**PaymentMethod**](PaymentMethod.md) |  | [default to undefined]
**payedAt** | **string** | Date and time when the order was paid (ISO 8601) | [default to undefined]
**errorCode** | **string** | Error code, if any | [default to undefined]
**errorMessage** | **string** | Error message, if any | [default to undefined]
**orderItems** | [**Array&lt;OrderCreateResponseOrderItemsInner&gt;**](OrderCreateResponseOrderItemsInner.md) |  | [default to undefined]
**session** | [**OrderCreateResponseSession**](OrderCreateResponseSession.md) |  | [optional] [default to undefined]

## Example

```typescript
import { OrderCreateResponse } from '@payconductor/sdk';

const instance: OrderCreateResponse = {
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
