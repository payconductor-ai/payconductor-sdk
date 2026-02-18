# Boleto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PaymentMethod** | **string** |  | 
**ExpirationInDays** | Pointer to [**BoletoExpirationInDays**](BoletoExpirationInDays.md) |  | [optional] [default to 7]

## Methods

### NewBoleto

`func NewBoleto(paymentMethod string, ) *Boleto`

NewBoleto instantiates a new Boleto object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewBoletoWithDefaults

`func NewBoletoWithDefaults() *Boleto`

NewBoletoWithDefaults instantiates a new Boleto object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetPaymentMethod

`func (o *Boleto) GetPaymentMethod() string`

GetPaymentMethod returns the PaymentMethod field if non-nil, zero value otherwise.

### GetPaymentMethodOk

`func (o *Boleto) GetPaymentMethodOk() (*string, bool)`

GetPaymentMethodOk returns a tuple with the PaymentMethod field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPaymentMethod

`func (o *Boleto) SetPaymentMethod(v string)`

SetPaymentMethod sets PaymentMethod field to given value.


### GetExpirationInDays

`func (o *Boleto) GetExpirationInDays() BoletoExpirationInDays`

GetExpirationInDays returns the ExpirationInDays field if non-nil, zero value otherwise.

### GetExpirationInDaysOk

`func (o *Boleto) GetExpirationInDaysOk() (*BoletoExpirationInDays, bool)`

GetExpirationInDaysOk returns a tuple with the ExpirationInDays field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpirationInDays

`func (o *Boleto) SetExpirationInDays(v BoletoExpirationInDays)`

SetExpirationInDays sets ExpirationInDays field to given value.

### HasExpirationInDays

`func (o *Boleto) HasExpirationInDays() bool`

HasExpirationInDays returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


