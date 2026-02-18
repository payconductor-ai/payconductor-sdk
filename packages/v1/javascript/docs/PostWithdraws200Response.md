# PayconductorSdk.PostWithdraws200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique withdrawal identifier | 
**externalId** | **String** | Withdrawal ID in your system | 
**externalIntegrationKey** | **String** | Provider key used for the withdrawal | 
**externalIntegrationId** | **String** | Withdrawal ID in the payment provider | 
**costFee** | **Number** | Cost fee applied to the withdrawal | 
**status** | **String** | Withdrawal status | [default to &#39;Pending&#39;]
**errorCode** | **String** | Error code, if any | 
**errorMessage** | **String** | Descriptive error message, if any | 
**payedAt** | [**PostWithdraws200ResponsePayedAt**](PostWithdraws200ResponsePayedAt.md) |  | 
**payoutAccount** | [**PostWithdraws200ResponsePayoutAccount**](PostWithdraws200ResponsePayoutAccount.md) |  | 



## Enum: StatusEnum


* `Pending` (value: `"Pending"`)

* `Transferring` (value: `"Transferring"`)

* `Completed` (value: `"Completed"`)

* `Failed` (value: `"Failed"`)




