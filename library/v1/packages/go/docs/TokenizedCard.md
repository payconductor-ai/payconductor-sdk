# TokenizedCard

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FirstSixCardNumber** | Pointer to **string** | First 6 digits of the credit card | [optional] 
**Token** | **string** | Previously generated credit card token | 

## Methods

### NewTokenizedCard

`func NewTokenizedCard(token string, ) *TokenizedCard`

NewTokenizedCard instantiates a new TokenizedCard object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTokenizedCardWithDefaults

`func NewTokenizedCardWithDefaults() *TokenizedCard`

NewTokenizedCardWithDefaults instantiates a new TokenizedCard object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetFirstSixCardNumber

`func (o *TokenizedCard) GetFirstSixCardNumber() string`

GetFirstSixCardNumber returns the FirstSixCardNumber field if non-nil, zero value otherwise.

### GetFirstSixCardNumberOk

`func (o *TokenizedCard) GetFirstSixCardNumberOk() (*string, bool)`

GetFirstSixCardNumberOk returns a tuple with the FirstSixCardNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFirstSixCardNumber

`func (o *TokenizedCard) SetFirstSixCardNumber(v string)`

SetFirstSixCardNumber sets FirstSixCardNumber field to given value.

### HasFirstSixCardNumber

`func (o *TokenizedCard) HasFirstSixCardNumber() bool`

HasFirstSixCardNumber returns a boolean if a field has been set.

### GetToken

`func (o *TokenizedCard) GetToken() string`

GetToken returns the Token field if non-nil, zero value otherwise.

### GetTokenOk

`func (o *TokenizedCard) GetTokenOk() (*string, bool)`

GetTokenOk returns a tuple with the Token field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken

`func (o *TokenizedCard) SetToken(v string)`

SetToken sets Token field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


