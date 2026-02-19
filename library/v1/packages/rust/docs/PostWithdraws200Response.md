# PostWithdraws200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique withdrawal identifier | 
**external_id** | Option<**String**> | Withdrawal ID in your system | 
**external_integration_key** | **String** | Provider key used for the withdrawal | 
**external_integration_id** | Option<**String**> | Withdrawal ID in the payment provider | 
**cost_fee** | **f64** | Cost fee applied to the withdrawal | 
**status** | [**models::Status**](Status.md) |  | 
**error_code** | Option<**String**> | Error code, if any | 
**error_message** | Option<**String**> | Descriptive error message, if any | 
**payed_at** | Option<[**models::PostWithdraws200ResponsePayedAt**](PostWithdraws200ResponsePayedAt.md)> |  | 
**payout_account** | [**models::PostWithdraws200ResponsePayoutAccount**](PostWithdraws200ResponsePayoutAccount.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


