# OrderCreateRequest

Order data for payment processing

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chargeAmount** | **number** | Total amount to be charged on the order in floating point value | [default to undefined]
**clientIp** | **string** | Client IP address | [default to undefined]
**customer** | [**CustomerCreateRequest**](CustomerCreateRequest.md) |  | [default to undefined]
**discountAmount** | **number** | Discount amount | [default to 0]
**externalId** | **string** | Order ID in your system | [default to undefined]
**fingerprints** | [**OrderFraudFingerprints**](OrderFraudFingerprints.md) |  | [optional] [default to undefined]
**items** | [**Array&lt;OrderItemData&gt;**](OrderItemData.md) | List of products or services in the order | [optional] [default to undefined]
**merchant** | [**MerchantInput**](MerchantInput.md) |  | [optional] [default to undefined]
**payment** | [**OrderPaymentRequest**](OrderPaymentRequest.md) |  | [default to undefined]
**splitAmountTotal** | **number** | Total split amount to be paid to the merchant (Used only for reporting purposes, does not generate actual split) | [optional] [default to undefined]
**session** | [**OrderCreateRequestSession**](OrderCreateRequestSession.md) |  | [optional] [default to undefined]
**shippingFee** | **number** | Shipping fee | [default to 0]
**taxFee** | **number** | Additional fees | [default to 0]
**metadata** | **object** | Additional metadata for the order as key-value pairs. Keys should not contain spaces or special characters | [optional] [default to undefined]

## Example

```typescript
import { OrderCreateRequest } from '@payconductor/sdk';

const instance: OrderCreateRequest = {
    chargeAmount,
    clientIp,
    customer,
    discountAmount,
    externalId,
    fingerprints,
    items,
    merchant,
    payment,
    splitAmountTotal,
    session,
    shippingFee,
    taxFee,
    metadata,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
