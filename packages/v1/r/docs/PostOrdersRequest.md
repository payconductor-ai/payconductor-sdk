# payconductor-sdk::PostOrdersRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chargeAmount** | **numeric** | Total amount to be charged on the order in floating point value | 
**clientIp** | **character** | Client IP address | 
**customer** | [**Customer**](Customer.md) |  | 
**discountAmount** | **numeric** | Discount amount | [default to 0] 
**externalId** | **character** | Order ID in your system | 
**fingerprints** | [**PostOrdersRequestFingerprints**](postOrders_request_fingerprints.md) |  | [optional] 
**items** | [**array[PostOrdersRequestItemsInner]**](postOrders_request_items_inner.md) | List of products or services in the order | [optional] [Max. items: 20] 
**merchant** | [**MerchantInput**](MerchantInput.md) |  | [optional] 
**payment** | [**PostOrdersRequestPayment**](postOrders_request_payment.md) |  | 
**splitAmountTotal** | **numeric** | Total split amount to be paid to the merchant (Used only for reporting purposes, does not generate actual split) | [optional] [Min: 0] 
**session** | [**PostOrdersRequestSession**](postOrders_request_session.md) |  | [optional] 
**shippingFee** | **numeric** | Shipping fee | [default to 0] 
**taxFee** | **numeric** | Additional fees | [default to 0] 
**metadata** | **object** | Additional metadata for the order as key-value pairs. Keys should not contain spaces or special characters | [optional] 


