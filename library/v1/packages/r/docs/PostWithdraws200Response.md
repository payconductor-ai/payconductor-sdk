# payconductor_sdk::PostWithdraws200Response


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **character** | Unique withdrawal identifier | 
**externalId** | **character** | Withdrawal ID in your system | 
**externalIntegrationKey** | **character** | Provider key used for the withdrawal | 
**externalIntegrationId** | **character** | Withdrawal ID in the payment provider | 
**costFee** | **numeric** | Cost fee applied to the withdrawal | 
**status** | **character** | Withdrawal status | [default to &quot;Pending&quot;] [Enum: [Pending, Transferring, Completed, Failed]] 
**errorCode** | **character** | Error code, if any | 
**errorMessage** | **character** | Descriptive error message, if any | 
**payedAt** | [**PostWithdraws200ResponsePayedAt**](postWithdraws_200_response_payedAt.md) |  | 
**payoutAccount** | [**PostWithdraws200ResponsePayoutAccount**](postWithdraws_200_response_payoutAccount.md) |  | 


