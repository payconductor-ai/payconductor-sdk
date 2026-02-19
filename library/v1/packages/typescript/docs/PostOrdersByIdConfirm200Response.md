# PostOrdersByIdConfirm200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | Order ID in the system | [default to undefined]
**externalId** | **string** | External order ID (provided by your integration) | [default to undefined]
**amount** | **number** | Total order amount | [default to undefined]
**costFee** | **number** | Cost fee applied to the order | [default to undefined]
**pix** | [**PostOrders200ResponsePix**](PostOrders200ResponsePix.md) |  | [optional] [default to undefined]
**bankSlip** | [**PostOrders200ResponseBankSlip**](PostOrders200ResponseBankSlip.md) |  | [optional] [default to undefined]
**nuPay** | [**PostOrders200ResponseNuPay**](PostOrders200ResponseNuPay.md) |  | [optional] [default to undefined]
**picPay** | [**PostOrders200ResponsePicPay**](PostOrders200ResponsePicPay.md) |  | [optional] [default to undefined]
**status** | **string** |  | [default to undefined]
**paymentMethod** | **string** |  | [default to undefined]
**payedAt** | **string** | Date and time when the order was paid (ISO 8601) | [default to undefined]
**errorCode** | **string** | Error code, if any | [default to undefined]
**errorMessage** | **string** | Error message, if any | [default to undefined]

## Example

```typescript
import { PostOrdersByIdConfirm200Response } from 'payconductor-sdk';

const instance: PostOrdersByIdConfirm200Response = {
    id,
    externalId,
    amount,
    costFee,
    pix,
    bankSlip,
    nuPay,
    picPay,
    status,
    paymentMethod,
    payedAt,
    errorCode,
    errorMessage,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
