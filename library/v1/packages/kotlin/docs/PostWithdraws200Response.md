
# PostWithdraws200Response

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **id** | **kotlin.String** | Unique withdrawal identifier |  |
| **externalId** | **kotlin.String** | Withdrawal ID in your system |  |
| **externalIntegrationKey** | **kotlin.String** | Provider key used for the withdrawal |  |
| **externalIntegrationId** | **kotlin.String** | Withdrawal ID in the payment provider |  |
| **costFee** | [**java.math.BigDecimal**](java.math.BigDecimal.md) | Cost fee applied to the withdrawal |  |
| **status** | [**Status**](Status.md) |  |  |
| **errorCode** | **kotlin.String** | Error code, if any |  |
| **errorMessage** | **kotlin.String** | Descriptive error message, if any |  |
| **payedAt** | [**PostWithdraws200ResponsePayedAt**](PostWithdraws200ResponsePayedAt.md) |  |  |
| **payoutAccount** | [**PostWithdraws200ResponsePayoutAccount**](PostWithdraws200ResponsePayoutAccount.md) |  |  |



