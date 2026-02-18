# CompleteCardData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Cvv** | **string** | Card security code (CVV) | 
**Expiration** | [**CompleteCardDataExpiration**](CompleteCardDataExpiration.md) |  | 
**HolderName** | **string** | Card holder name | 
**Number** | **string** | Credit card number | 

## Methods

### NewCompleteCardData

`func NewCompleteCardData(cvv string, expiration CompleteCardDataExpiration, holderName string, number string, ) *CompleteCardData`

NewCompleteCardData instantiates a new CompleteCardData object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCompleteCardDataWithDefaults

`func NewCompleteCardDataWithDefaults() *CompleteCardData`

NewCompleteCardDataWithDefaults instantiates a new CompleteCardData object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetCvv

`func (o *CompleteCardData) GetCvv() string`

GetCvv returns the Cvv field if non-nil, zero value otherwise.

### GetCvvOk

`func (o *CompleteCardData) GetCvvOk() (*string, bool)`

GetCvvOk returns a tuple with the Cvv field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCvv

`func (o *CompleteCardData) SetCvv(v string)`

SetCvv sets Cvv field to given value.


### GetExpiration

`func (o *CompleteCardData) GetExpiration() CompleteCardDataExpiration`

GetExpiration returns the Expiration field if non-nil, zero value otherwise.

### GetExpirationOk

`func (o *CompleteCardData) GetExpirationOk() (*CompleteCardDataExpiration, bool)`

GetExpirationOk returns a tuple with the Expiration field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiration

`func (o *CompleteCardData) SetExpiration(v CompleteCardDataExpiration)`

SetExpiration sets Expiration field to given value.


### GetHolderName

`func (o *CompleteCardData) GetHolderName() string`

GetHolderName returns the HolderName field if non-nil, zero value otherwise.

### GetHolderNameOk

`func (o *CompleteCardData) GetHolderNameOk() (*string, bool)`

GetHolderNameOk returns a tuple with the HolderName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHolderName

`func (o *CompleteCardData) SetHolderName(v string)`

SetHolderName sets HolderName field to given value.


### GetNumber

`func (o *CompleteCardData) GetNumber() string`

GetNumber returns the Number field if non-nil, zero value otherwise.

### GetNumberOk

`func (o *CompleteCardData) GetNumberOk() (*string, bool)`

GetNumberOk returns a tuple with the Number field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumber

`func (o *CompleteCardData) SetNumber(v string)`

SetNumber sets Number field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


