

# PostWithdraws200Response


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **String** | Unique withdrawal identifier |  |
|**externalId** | **String** | Withdrawal ID in your system |  |
|**externalIntegrationKey** | **String** | Provider key used for the withdrawal |  |
|**externalIntegrationId** | **String** | Withdrawal ID in the payment provider |  |
|**costFee** | **BigDecimal** | Cost fee applied to the withdrawal |  |
|**status** | **Status** |  |  |
|**errorCode** | **String** | Error code, if any |  |
|**errorMessage** | **String** | Descriptive error message, if any |  |
|**payedAt** | [**PostWithdraws200ResponsePayedAt**](PostWithdraws200ResponsePayedAt.md) |  |  |
|**payoutAccount** | [**PostWithdraws200ResponsePayoutAccount**](PostWithdraws200ResponsePayoutAccount.md) |  |  |



