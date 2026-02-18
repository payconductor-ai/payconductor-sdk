

# PostWithdraws200Response


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **String** | Unique withdrawal identifier |  |
|**externalId** | **String** | Withdrawal ID in your system |  |
|**externalIntegrationKey** | **String** | Provider key used for the withdrawal |  |
|**externalIntegrationId** | **String** | Withdrawal ID in the payment provider |  |
|**costFee** | **BigDecimal** | Cost fee applied to the withdrawal |  |
|**status** | [**StatusEnum**](#StatusEnum) | Withdrawal status |  |
|**errorCode** | **String** | Error code, if any |  |
|**errorMessage** | **String** | Descriptive error message, if any |  |
|**payedAt** | [**PostWithdraws200ResponsePayedAt**](PostWithdraws200ResponsePayedAt.md) |  |  |
|**payoutAccount** | [**PostWithdraws200ResponsePayoutAccount**](PostWithdraws200ResponsePayoutAccount.md) |  |  |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| PENDING | &quot;Pending&quot; |
| TRANSFERRING | &quot;Transferring&quot; |
| COMPLETED | &quot;Completed&quot; |
| FAILED | &quot;Failed&quot; |



