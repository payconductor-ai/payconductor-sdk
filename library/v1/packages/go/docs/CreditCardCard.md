# CreditCardCard

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FirstSixCardNumber** | Pointer to **string** | First 6 digits of the credit card | [optional] 
**Token** | **string** | Previously generated credit card token | 
**Cvv** | **string** | Card security code (CVV) | 
**Expiration** | [**CompleteCardDataExpiration**](CompleteCardDataExpiration.md) |  | 
**HolderName** | **string** | Card holder name | 
**Number** | **string** | Credit card number | 

## Methods

### NewCreditCardCard

`func NewCreditCardCard(token string, cvv string, expiration CompleteCardDataExpiration, holderName string, number string, ) *CreditCardCard`

NewCreditCardCard instantiates a new CreditCardCard object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCreditCardCardWithDefaults

`func NewCreditCardCardWithDefaults() *CreditCardCard`

NewCreditCardCardWithDefaults instantiates a new CreditCardCard object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetFirstSixCardNumber

`func (o *CreditCardCard) GetFirstSixCardNumber() string`

GetFirstSixCardNumber returns the FirstSixCardNumber field if non-nil, zero value otherwise.

### GetFirstSixCardNumberOk

`func (o *CreditCardCard) GetFirstSixCardNumberOk() (*string, bool)`

GetFirstSixCardNumberOk returns a tuple with the FirstSixCardNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFirstSixCardNumber

`func (o *CreditCardCard) SetFirstSixCardNumber(v string)`

SetFirstSixCardNumber sets FirstSixCardNumber field to given value.

### HasFirstSixCardNumber

`func (o *CreditCardCard) HasFirstSixCardNumber() bool`

HasFirstSixCardNumber returns a boolean if a field has been set.

### GetToken

`func (o *CreditCardCard) GetToken() string`

GetToken returns the Token field if non-nil, zero value otherwise.

### GetTokenOk

`func (o *CreditCardCard) GetTokenOk() (*string, bool)`

GetTokenOk returns a tuple with the Token field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken

`func (o *CreditCardCard) SetToken(v string)`

SetToken sets Token field to given value.


### GetCvv

`func (o *CreditCardCard) GetCvv() string`

GetCvv returns the Cvv field if non-nil, zero value otherwise.

### GetCvvOk

`func (o *CreditCardCard) GetCvvOk() (*string, bool)`

GetCvvOk returns a tuple with the Cvv field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCvv

`func (o *CreditCardCard) SetCvv(v string)`

SetCvv sets Cvv field to given value.


### GetExpiration

`func (o *CreditCardCard) GetExpiration() CompleteCardDataExpiration`

GetExpiration returns the Expiration field if non-nil, zero value otherwise.

### GetExpirationOk

`func (o *CreditCardCard) GetExpirationOk() (*CompleteCardDataExpiration, bool)`

GetExpirationOk returns a tuple with the Expiration field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiration

`func (o *CreditCardCard) SetExpiration(v CompleteCardDataExpiration)`

SetExpiration sets Expiration field to given value.


### GetHolderName

`func (o *CreditCardCard) GetHolderName() string`

GetHolderName returns the HolderName field if non-nil, zero value otherwise.

### GetHolderNameOk

`func (o *CreditCardCard) GetHolderNameOk() (*string, bool)`

GetHolderNameOk returns a tuple with the HolderName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHolderName

`func (o *CreditCardCard) SetHolderName(v string)`

SetHolderName sets HolderName field to given value.


### GetNumber

`func (o *CreditCardCard) GetNumber() string`

GetNumber returns the Number field if non-nil, zero value otherwise.

### GetNumberOk

`func (o *CreditCardCard) GetNumberOk() (*string, bool)`

GetNumberOk returns a tuple with the Number field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumber

`func (o *CreditCardCard) SetNumber(v string)`

SetNumber sets Number field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


