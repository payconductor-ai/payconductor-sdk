# PostWithdraws200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** | Unique withdrawal identifier | 
**ExternalId** | **NullableString** | Withdrawal ID in your system | 
**ExternalIntegrationKey** | **string** | Provider key used for the withdrawal | 
**ExternalIntegrationId** | **NullableString** | Withdrawal ID in the payment provider | 
**CostFee** | **float32** | Cost fee applied to the withdrawal | 
**Status** | **string** | Withdrawal status | [default to "Pending"]
**ErrorCode** | **NullableString** | Error code, if any | 
**ErrorMessage** | **NullableString** | Descriptive error message, if any | 
**PayedAt** | [**NullablePostWithdraws200ResponsePayedAt**](PostWithdraws200ResponsePayedAt.md) |  | 
**PayoutAccount** | [**PostWithdraws200ResponsePayoutAccount**](PostWithdraws200ResponsePayoutAccount.md) |  | 

## Methods

### NewPostWithdraws200Response

`func NewPostWithdraws200Response(id string, externalId NullableString, externalIntegrationKey string, externalIntegrationId NullableString, costFee float32, status string, errorCode NullableString, errorMessage NullableString, payedAt NullablePostWithdraws200ResponsePayedAt, payoutAccount PostWithdraws200ResponsePayoutAccount, ) *PostWithdraws200Response`

NewPostWithdraws200Response instantiates a new PostWithdraws200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPostWithdraws200ResponseWithDefaults

`func NewPostWithdraws200ResponseWithDefaults() *PostWithdraws200Response`

NewPostWithdraws200ResponseWithDefaults instantiates a new PostWithdraws200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *PostWithdraws200Response) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *PostWithdraws200Response) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *PostWithdraws200Response) SetId(v string)`

SetId sets Id field to given value.


### GetExternalId

`func (o *PostWithdraws200Response) GetExternalId() string`

GetExternalId returns the ExternalId field if non-nil, zero value otherwise.

### GetExternalIdOk

`func (o *PostWithdraws200Response) GetExternalIdOk() (*string, bool)`

GetExternalIdOk returns a tuple with the ExternalId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExternalId

`func (o *PostWithdraws200Response) SetExternalId(v string)`

SetExternalId sets ExternalId field to given value.


### SetExternalIdNil

`func (o *PostWithdraws200Response) SetExternalIdNil(b bool)`

 SetExternalIdNil sets the value for ExternalId to be an explicit nil

### UnsetExternalId
`func (o *PostWithdraws200Response) UnsetExternalId()`

UnsetExternalId ensures that no value is present for ExternalId, not even an explicit nil
### GetExternalIntegrationKey

`func (o *PostWithdraws200Response) GetExternalIntegrationKey() string`

GetExternalIntegrationKey returns the ExternalIntegrationKey field if non-nil, zero value otherwise.

### GetExternalIntegrationKeyOk

`func (o *PostWithdraws200Response) GetExternalIntegrationKeyOk() (*string, bool)`

GetExternalIntegrationKeyOk returns a tuple with the ExternalIntegrationKey field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExternalIntegrationKey

`func (o *PostWithdraws200Response) SetExternalIntegrationKey(v string)`

SetExternalIntegrationKey sets ExternalIntegrationKey field to given value.


### GetExternalIntegrationId

`func (o *PostWithdraws200Response) GetExternalIntegrationId() string`

GetExternalIntegrationId returns the ExternalIntegrationId field if non-nil, zero value otherwise.

### GetExternalIntegrationIdOk

`func (o *PostWithdraws200Response) GetExternalIntegrationIdOk() (*string, bool)`

GetExternalIntegrationIdOk returns a tuple with the ExternalIntegrationId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExternalIntegrationId

`func (o *PostWithdraws200Response) SetExternalIntegrationId(v string)`

SetExternalIntegrationId sets ExternalIntegrationId field to given value.


### SetExternalIntegrationIdNil

`func (o *PostWithdraws200Response) SetExternalIntegrationIdNil(b bool)`

 SetExternalIntegrationIdNil sets the value for ExternalIntegrationId to be an explicit nil

### UnsetExternalIntegrationId
`func (o *PostWithdraws200Response) UnsetExternalIntegrationId()`

UnsetExternalIntegrationId ensures that no value is present for ExternalIntegrationId, not even an explicit nil
### GetCostFee

`func (o *PostWithdraws200Response) GetCostFee() float32`

GetCostFee returns the CostFee field if non-nil, zero value otherwise.

### GetCostFeeOk

`func (o *PostWithdraws200Response) GetCostFeeOk() (*float32, bool)`

GetCostFeeOk returns a tuple with the CostFee field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCostFee

`func (o *PostWithdraws200Response) SetCostFee(v float32)`

SetCostFee sets CostFee field to given value.


### GetStatus

`func (o *PostWithdraws200Response) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *PostWithdraws200Response) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *PostWithdraws200Response) SetStatus(v string)`

SetStatus sets Status field to given value.


### GetErrorCode

`func (o *PostWithdraws200Response) GetErrorCode() string`

GetErrorCode returns the ErrorCode field if non-nil, zero value otherwise.

### GetErrorCodeOk

`func (o *PostWithdraws200Response) GetErrorCodeOk() (*string, bool)`

GetErrorCodeOk returns a tuple with the ErrorCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetErrorCode

`func (o *PostWithdraws200Response) SetErrorCode(v string)`

SetErrorCode sets ErrorCode field to given value.


### SetErrorCodeNil

`func (o *PostWithdraws200Response) SetErrorCodeNil(b bool)`

 SetErrorCodeNil sets the value for ErrorCode to be an explicit nil

### UnsetErrorCode
`func (o *PostWithdraws200Response) UnsetErrorCode()`

UnsetErrorCode ensures that no value is present for ErrorCode, not even an explicit nil
### GetErrorMessage

`func (o *PostWithdraws200Response) GetErrorMessage() string`

GetErrorMessage returns the ErrorMessage field if non-nil, zero value otherwise.

### GetErrorMessageOk

`func (o *PostWithdraws200Response) GetErrorMessageOk() (*string, bool)`

GetErrorMessageOk returns a tuple with the ErrorMessage field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetErrorMessage

`func (o *PostWithdraws200Response) SetErrorMessage(v string)`

SetErrorMessage sets ErrorMessage field to given value.


### SetErrorMessageNil

`func (o *PostWithdraws200Response) SetErrorMessageNil(b bool)`

 SetErrorMessageNil sets the value for ErrorMessage to be an explicit nil

### UnsetErrorMessage
`func (o *PostWithdraws200Response) UnsetErrorMessage()`

UnsetErrorMessage ensures that no value is present for ErrorMessage, not even an explicit nil
### GetPayedAt

`func (o *PostWithdraws200Response) GetPayedAt() PostWithdraws200ResponsePayedAt`

GetPayedAt returns the PayedAt field if non-nil, zero value otherwise.

### GetPayedAtOk

`func (o *PostWithdraws200Response) GetPayedAtOk() (*PostWithdraws200ResponsePayedAt, bool)`

GetPayedAtOk returns a tuple with the PayedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPayedAt

`func (o *PostWithdraws200Response) SetPayedAt(v PostWithdraws200ResponsePayedAt)`

SetPayedAt sets PayedAt field to given value.


### SetPayedAtNil

`func (o *PostWithdraws200Response) SetPayedAtNil(b bool)`

 SetPayedAtNil sets the value for PayedAt to be an explicit nil

### UnsetPayedAt
`func (o *PostWithdraws200Response) UnsetPayedAt()`

UnsetPayedAt ensures that no value is present for PayedAt, not even an explicit nil
### GetPayoutAccount

`func (o *PostWithdraws200Response) GetPayoutAccount() PostWithdraws200ResponsePayoutAccount`

GetPayoutAccount returns the PayoutAccount field if non-nil, zero value otherwise.

### GetPayoutAccountOk

`func (o *PostWithdraws200Response) GetPayoutAccountOk() (*PostWithdraws200ResponsePayoutAccount, bool)`

GetPayoutAccountOk returns a tuple with the PayoutAccount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPayoutAccount

`func (o *PostWithdraws200Response) SetPayoutAccount(v PostWithdraws200ResponsePayoutAccount)`

SetPayoutAccount sets PayoutAccount field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


