

# PostOrdersRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**chargeAmount** | **BigDecimal** | Total amount to be charged on the order in floating point value |  |
|**clientIp** | **String** | Client IP address |  |
|**customer** | [**Customer**](Customer.md) |  |  |
|**discountAmount** | **BigDecimal** | Discount amount |  |
|**externalId** | **String** | Order ID in your system |  |
|**fingerprints** | [**PostOrdersRequestFingerprints**](PostOrdersRequestFingerprints.md) |  |  [optional] |
|**items** | [**List&lt;PostOrdersRequestItemsInner&gt;**](PostOrdersRequestItemsInner.md) | List of products or services in the order |  [optional] |
|**merchant** | [**MerchantInput**](MerchantInput.md) |  |  [optional] |
|**payment** | [**PostOrdersRequestPayment**](PostOrdersRequestPayment.md) |  |  |
|**splitAmountTotal** | **BigDecimal** | Total split amount to be paid to the merchant (Used only for reporting purposes, does not generate actual split) |  [optional] |
|**session** | [**PostOrdersRequestSession**](PostOrdersRequestSession.md) |  |  [optional] |
|**shippingFee** | **BigDecimal** | Shipping fee |  |
|**taxFee** | **BigDecimal** | Additional fees |  |
|**metadata** | **Object** | Additional metadata for the order as key-value pairs. Keys should not contain spaces or special characters |  [optional] |



