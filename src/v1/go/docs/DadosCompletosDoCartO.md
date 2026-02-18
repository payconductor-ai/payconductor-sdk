# DadosCompletosDoCartO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Cvv** | **string** | Código de segurança do cartão (CVV) | 
**Expiration** | [**DadosCompletosDoCartOExpiration**](DadosCompletosDoCartOExpiration.md) |  | 
**HolderName** | **string** | Nome do titular do cartão | 
**Number** | **string** | Número do cartão de crédito | 

## Methods

### NewDadosCompletosDoCartO

`func NewDadosCompletosDoCartO(cvv string, expiration DadosCompletosDoCartOExpiration, holderName string, number string, ) *DadosCompletosDoCartO`

NewDadosCompletosDoCartO instantiates a new DadosCompletosDoCartO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDadosCompletosDoCartOWithDefaults

`func NewDadosCompletosDoCartOWithDefaults() *DadosCompletosDoCartO`

NewDadosCompletosDoCartOWithDefaults instantiates a new DadosCompletosDoCartO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetCvv

`func (o *DadosCompletosDoCartO) GetCvv() string`

GetCvv returns the Cvv field if non-nil, zero value otherwise.

### GetCvvOk

`func (o *DadosCompletosDoCartO) GetCvvOk() (*string, bool)`

GetCvvOk returns a tuple with the Cvv field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCvv

`func (o *DadosCompletosDoCartO) SetCvv(v string)`

SetCvv sets Cvv field to given value.


### GetExpiration

`func (o *DadosCompletosDoCartO) GetExpiration() DadosCompletosDoCartOExpiration`

GetExpiration returns the Expiration field if non-nil, zero value otherwise.

### GetExpirationOk

`func (o *DadosCompletosDoCartO) GetExpirationOk() (*DadosCompletosDoCartOExpiration, bool)`

GetExpirationOk returns a tuple with the Expiration field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiration

`func (o *DadosCompletosDoCartO) SetExpiration(v DadosCompletosDoCartOExpiration)`

SetExpiration sets Expiration field to given value.


### GetHolderName

`func (o *DadosCompletosDoCartO) GetHolderName() string`

GetHolderName returns the HolderName field if non-nil, zero value otherwise.

### GetHolderNameOk

`func (o *DadosCompletosDoCartO) GetHolderNameOk() (*string, bool)`

GetHolderNameOk returns a tuple with the HolderName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHolderName

`func (o *DadosCompletosDoCartO) SetHolderName(v string)`

SetHolderName sets HolderName field to given value.


### GetNumber

`func (o *DadosCompletosDoCartO) GetNumber() string`

GetNumber returns the Number field if non-nil, zero value otherwise.

### GetNumberOk

`func (o *DadosCompletosDoCartO) GetNumberOk() (*string, bool)`

GetNumberOk returns a tuple with the Number field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumber

`func (o *DadosCompletosDoCartO) SetNumber(v string)`

SetNumber sets Number field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


