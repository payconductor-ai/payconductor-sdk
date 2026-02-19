# PostWithdrawsRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Amount** | **float32** | Withdrawal amount in cents | 
**ExternalId** | Pointer to **string** | Withdrawal ID in your system | [optional] 
**Merchant** | Pointer to [**MerchantInput**](MerchantInput.md) |  | [optional] 
**PayoutAccount** | [**PostWithdrawsRequestPayoutAccount**](PostWithdrawsRequestPayoutAccount.md) |  | 

## Methods

### NewPostWithdrawsRequest

`func NewPostWithdrawsRequest(amount float32, payoutAccount PostWithdrawsRequestPayoutAccount, ) *PostWithdrawsRequest`

NewPostWithdrawsRequest instantiates a new PostWithdrawsRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPostWithdrawsRequestWithDefaults

`func NewPostWithdrawsRequestWithDefaults() *PostWithdrawsRequest`

NewPostWithdrawsRequestWithDefaults instantiates a new PostWithdrawsRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAmount

`func (o *PostWithdrawsRequest) GetAmount() float32`

GetAmount returns the Amount field if non-nil, zero value otherwise.

### GetAmountOk

`func (o *PostWithdrawsRequest) GetAmountOk() (*float32, bool)`

GetAmountOk returns a tuple with the Amount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount

`func (o *PostWithdrawsRequest) SetAmount(v float32)`

SetAmount sets Amount field to given value.


### GetExternalId

`func (o *PostWithdrawsRequest) GetExternalId() string`

GetExternalId returns the ExternalId field if non-nil, zero value otherwise.

### GetExternalIdOk

`func (o *PostWithdrawsRequest) GetExternalIdOk() (*string, bool)`

GetExternalIdOk returns a tuple with the ExternalId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExternalId

`func (o *PostWithdrawsRequest) SetExternalId(v string)`

SetExternalId sets ExternalId field to given value.

### HasExternalId

`func (o *PostWithdrawsRequest) HasExternalId() bool`

HasExternalId returns a boolean if a field has been set.

### GetMerchant

`func (o *PostWithdrawsRequest) GetMerchant() MerchantInput`

GetMerchant returns the Merchant field if non-nil, zero value otherwise.

### GetMerchantOk

`func (o *PostWithdrawsRequest) GetMerchantOk() (*MerchantInput, bool)`

GetMerchantOk returns a tuple with the Merchant field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMerchant

`func (o *PostWithdrawsRequest) SetMerchant(v MerchantInput)`

SetMerchant sets Merchant field to given value.

### HasMerchant

`func (o *PostWithdrawsRequest) HasMerchant() bool`

HasMerchant returns a boolean if a field has been set.

### GetPayoutAccount

`func (o *PostWithdrawsRequest) GetPayoutAccount() PostWithdrawsRequestPayoutAccount`

GetPayoutAccount returns the PayoutAccount field if non-nil, zero value otherwise.

### GetPayoutAccountOk

`func (o *PostWithdrawsRequest) GetPayoutAccountOk() (*PostWithdrawsRequestPayoutAccount, bool)`

GetPayoutAccountOk returns a tuple with the PayoutAccount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPayoutAccount

`func (o *PostWithdrawsRequest) SetPayoutAccount(v PostWithdrawsRequestPayoutAccount)`

SetPayoutAccount sets PayoutAccount field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


