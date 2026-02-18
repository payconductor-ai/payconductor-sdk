# CartODeCrDitoCard

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FirstSixCardNumber** | Pointer to **string** | Primeiros 6 dígitos do cartão de crédito | [optional] 
**Token** | **string** | Token do cartão de crédito gerado anteriormente | 
**Cvv** | **string** | Código de segurança do cartão (CVV) | 
**Expiration** | [**DadosCompletosDoCartOExpiration**](DadosCompletosDoCartOExpiration.md) |  | 
**HolderName** | **string** | Nome do titular do cartão | 
**Number** | **string** | Número do cartão de crédito | 

## Methods

### NewCartODeCrDitoCard

`func NewCartODeCrDitoCard(token string, cvv string, expiration DadosCompletosDoCartOExpiration, holderName string, number string, ) *CartODeCrDitoCard`

NewCartODeCrDitoCard instantiates a new CartODeCrDitoCard object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCartODeCrDitoCardWithDefaults

`func NewCartODeCrDitoCardWithDefaults() *CartODeCrDitoCard`

NewCartODeCrDitoCardWithDefaults instantiates a new CartODeCrDitoCard object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetFirstSixCardNumber

`func (o *CartODeCrDitoCard) GetFirstSixCardNumber() string`

GetFirstSixCardNumber returns the FirstSixCardNumber field if non-nil, zero value otherwise.

### GetFirstSixCardNumberOk

`func (o *CartODeCrDitoCard) GetFirstSixCardNumberOk() (*string, bool)`

GetFirstSixCardNumberOk returns a tuple with the FirstSixCardNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFirstSixCardNumber

`func (o *CartODeCrDitoCard) SetFirstSixCardNumber(v string)`

SetFirstSixCardNumber sets FirstSixCardNumber field to given value.

### HasFirstSixCardNumber

`func (o *CartODeCrDitoCard) HasFirstSixCardNumber() bool`

HasFirstSixCardNumber returns a boolean if a field has been set.

### GetToken

`func (o *CartODeCrDitoCard) GetToken() string`

GetToken returns the Token field if non-nil, zero value otherwise.

### GetTokenOk

`func (o *CartODeCrDitoCard) GetTokenOk() (*string, bool)`

GetTokenOk returns a tuple with the Token field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken

`func (o *CartODeCrDitoCard) SetToken(v string)`

SetToken sets Token field to given value.


### GetCvv

`func (o *CartODeCrDitoCard) GetCvv() string`

GetCvv returns the Cvv field if non-nil, zero value otherwise.

### GetCvvOk

`func (o *CartODeCrDitoCard) GetCvvOk() (*string, bool)`

GetCvvOk returns a tuple with the Cvv field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCvv

`func (o *CartODeCrDitoCard) SetCvv(v string)`

SetCvv sets Cvv field to given value.


### GetExpiration

`func (o *CartODeCrDitoCard) GetExpiration() DadosCompletosDoCartOExpiration`

GetExpiration returns the Expiration field if non-nil, zero value otherwise.

### GetExpirationOk

`func (o *CartODeCrDitoCard) GetExpirationOk() (*DadosCompletosDoCartOExpiration, bool)`

GetExpirationOk returns a tuple with the Expiration field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiration

`func (o *CartODeCrDitoCard) SetExpiration(v DadosCompletosDoCartOExpiration)`

SetExpiration sets Expiration field to given value.


### GetHolderName

`func (o *CartODeCrDitoCard) GetHolderName() string`

GetHolderName returns the HolderName field if non-nil, zero value otherwise.

### GetHolderNameOk

`func (o *CartODeCrDitoCard) GetHolderNameOk() (*string, bool)`

GetHolderNameOk returns a tuple with the HolderName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHolderName

`func (o *CartODeCrDitoCard) SetHolderName(v string)`

SetHolderName sets HolderName field to given value.


### GetNumber

`func (o *CartODeCrDitoCard) GetNumber() string`

GetNumber returns the Number field if non-nil, zero value otherwise.

### GetNumberOk

`func (o *CartODeCrDitoCard) GetNumberOk() (*string, bool)`

GetNumberOk returns a tuple with the Number field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumber

`func (o *CartODeCrDitoCard) SetNumber(v string)`

SetNumber sets Number field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


