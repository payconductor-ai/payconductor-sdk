# openapi.model.PostWithdraws200Response

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique withdrawal identifier | 
**externalId** | **String** | Withdrawal ID in your system | 
**externalIntegrationKey** | **String** | Provider key used for the withdrawal | 
**externalIntegrationId** | **String** | Withdrawal ID in the payment provider | 
**costFee** | **num** | Cost fee applied to the withdrawal | 
**status** | **String** | Withdrawal status | [default to 'Pending']
**errorCode** | **String** | Error code, if any | 
**errorMessage** | **String** | Descriptive error message, if any | 
**payedAt** | [**PostWithdraws200ResponsePayedAt**](PostWithdraws200ResponsePayedAt.md) |  | 
**payoutAccount** | [**PostWithdraws200ResponsePayoutAccount**](PostWithdraws200ResponsePayoutAccount.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


