# Pix

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PaymentMethod** | **string** |  | 
**ExpirationInSeconds** | Pointer to [**PixExpirationInSeconds**](PixExpirationInSeconds.md) |  | [optional] [default to 3600]

## Methods

### NewPix

`func NewPix(paymentMethod string, ) *Pix`

NewPix instantiates a new Pix object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPixWithDefaults

`func NewPixWithDefaults() *Pix`

NewPixWithDefaults instantiates a new Pix object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetPaymentMethod

`func (o *Pix) GetPaymentMethod() string`

GetPaymentMethod returns the PaymentMethod field if non-nil, zero value otherwise.

### GetPaymentMethodOk

`func (o *Pix) GetPaymentMethodOk() (*string, bool)`

GetPaymentMethodOk returns a tuple with the PaymentMethod field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPaymentMethod

`func (o *Pix) SetPaymentMethod(v string)`

SetPaymentMethod sets PaymentMethod field to given value.


### GetExpirationInSeconds

`func (o *Pix) GetExpirationInSeconds() PixExpirationInSeconds`

GetExpirationInSeconds returns the ExpirationInSeconds field if non-nil, zero value otherwise.

### GetExpirationInSecondsOk

`func (o *Pix) GetExpirationInSecondsOk() (*PixExpirationInSeconds, bool)`

GetExpirationInSecondsOk returns a tuple with the ExpirationInSeconds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpirationInSeconds

`func (o *Pix) SetExpirationInSeconds(v PixExpirationInSeconds)`

SetExpirationInSeconds sets ExpirationInSeconds field to given value.

### HasExpirationInSeconds

`func (o *Pix) HasExpirationInSeconds() bool`

HasExpirationInSeconds returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


