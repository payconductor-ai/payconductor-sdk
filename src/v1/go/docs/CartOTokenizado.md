# CartOTokenizado

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FirstSixCardNumber** | Pointer to **string** | Primeiros 6 dígitos do cartão de crédito | [optional] 
**Token** | **string** | Token do cartão de crédito gerado anteriormente | 

## Methods

### NewCartOTokenizado

`func NewCartOTokenizado(token string, ) *CartOTokenizado`

NewCartOTokenizado instantiates a new CartOTokenizado object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCartOTokenizadoWithDefaults

`func NewCartOTokenizadoWithDefaults() *CartOTokenizado`

NewCartOTokenizadoWithDefaults instantiates a new CartOTokenizado object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetFirstSixCardNumber

`func (o *CartOTokenizado) GetFirstSixCardNumber() string`

GetFirstSixCardNumber returns the FirstSixCardNumber field if non-nil, zero value otherwise.

### GetFirstSixCardNumberOk

`func (o *CartOTokenizado) GetFirstSixCardNumberOk() (*string, bool)`

GetFirstSixCardNumberOk returns a tuple with the FirstSixCardNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFirstSixCardNumber

`func (o *CartOTokenizado) SetFirstSixCardNumber(v string)`

SetFirstSixCardNumber sets FirstSixCardNumber field to given value.

### HasFirstSixCardNumber

`func (o *CartOTokenizado) HasFirstSixCardNumber() bool`

HasFirstSixCardNumber returns a boolean if a field has been set.

### GetToken

`func (o *CartOTokenizado) GetToken() string`

GetToken returns the Token field if non-nil, zero value otherwise.

### GetTokenOk

`func (o *CartOTokenizado) GetTokenOk() (*string, bool)`

GetTokenOk returns a tuple with the Token field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken

`func (o *CartOTokenizado) SetToken(v string)`

SetToken sets Token field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


