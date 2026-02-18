# CartODeCrDito

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PaymentMethod** | **string** |  | 
**Card** | [**CartODeCrDitoCard**](CartODeCrDitoCard.md) |  | 
**Installments** | [**CartODeCrDitoInstallments**](CartODeCrDitoInstallments.md) |  | [default to 1]
**SoftDescriptor** | Pointer to **string** | Texto que aparecerá na fatura do cartão (soft descriptor) | [optional] 

## Methods

### NewCartODeCrDito

`func NewCartODeCrDito(paymentMethod string, card CartODeCrDitoCard, installments CartODeCrDitoInstallments, ) *CartODeCrDito`

NewCartODeCrDito instantiates a new CartODeCrDito object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCartODeCrDitoWithDefaults

`func NewCartODeCrDitoWithDefaults() *CartODeCrDito`

NewCartODeCrDitoWithDefaults instantiates a new CartODeCrDito object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetPaymentMethod

`func (o *CartODeCrDito) GetPaymentMethod() string`

GetPaymentMethod returns the PaymentMethod field if non-nil, zero value otherwise.

### GetPaymentMethodOk

`func (o *CartODeCrDito) GetPaymentMethodOk() (*string, bool)`

GetPaymentMethodOk returns a tuple with the PaymentMethod field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPaymentMethod

`func (o *CartODeCrDito) SetPaymentMethod(v string)`

SetPaymentMethod sets PaymentMethod field to given value.


### GetCard

`func (o *CartODeCrDito) GetCard() CartODeCrDitoCard`

GetCard returns the Card field if non-nil, zero value otherwise.

### GetCardOk

`func (o *CartODeCrDito) GetCardOk() (*CartODeCrDitoCard, bool)`

GetCardOk returns a tuple with the Card field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCard

`func (o *CartODeCrDito) SetCard(v CartODeCrDitoCard)`

SetCard sets Card field to given value.


### GetInstallments

`func (o *CartODeCrDito) GetInstallments() CartODeCrDitoInstallments`

GetInstallments returns the Installments field if non-nil, zero value otherwise.

### GetInstallmentsOk

`func (o *CartODeCrDito) GetInstallmentsOk() (*CartODeCrDitoInstallments, bool)`

GetInstallmentsOk returns a tuple with the Installments field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstallments

`func (o *CartODeCrDito) SetInstallments(v CartODeCrDitoInstallments)`

SetInstallments sets Installments field to given value.


### GetSoftDescriptor

`func (o *CartODeCrDito) GetSoftDescriptor() string`

GetSoftDescriptor returns the SoftDescriptor field if non-nil, zero value otherwise.

### GetSoftDescriptorOk

`func (o *CartODeCrDito) GetSoftDescriptorOk() (*string, bool)`

GetSoftDescriptorOk returns a tuple with the SoftDescriptor field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSoftDescriptor

`func (o *CartODeCrDito) SetSoftDescriptor(v string)`

SetSoftDescriptor sets SoftDescriptor field to given value.

### HasSoftDescriptor

`func (o *CartODeCrDito) HasSoftDescriptor() bool`

HasSoftDescriptor returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


