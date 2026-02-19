# CreditCard

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PaymentMethod** | [**PaymentMethod**](PaymentMethod.md) |  | 
**Card** | [**CreditCardCard**](CreditCardCard.md) |  | 
**Installments** | [**CreditCardInstallments**](CreditCardInstallments.md) |  | [default to 1]
**SoftDescriptor** | Pointer to **string** | Text that will appear on the card statement (soft descriptor) | [optional] 

## Methods

### NewCreditCard

`func NewCreditCard(paymentMethod PaymentMethod, card CreditCardCard, installments CreditCardInstallments, ) *CreditCard`

NewCreditCard instantiates a new CreditCard object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCreditCardWithDefaults

`func NewCreditCardWithDefaults() *CreditCard`

NewCreditCardWithDefaults instantiates a new CreditCard object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetPaymentMethod

`func (o *CreditCard) GetPaymentMethod() PaymentMethod`

GetPaymentMethod returns the PaymentMethod field if non-nil, zero value otherwise.

### GetPaymentMethodOk

`func (o *CreditCard) GetPaymentMethodOk() (*PaymentMethod, bool)`

GetPaymentMethodOk returns a tuple with the PaymentMethod field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPaymentMethod

`func (o *CreditCard) SetPaymentMethod(v PaymentMethod)`

SetPaymentMethod sets PaymentMethod field to given value.


### GetCard

`func (o *CreditCard) GetCard() CreditCardCard`

GetCard returns the Card field if non-nil, zero value otherwise.

### GetCardOk

`func (o *CreditCard) GetCardOk() (*CreditCardCard, bool)`

GetCardOk returns a tuple with the Card field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCard

`func (o *CreditCard) SetCard(v CreditCardCard)`

SetCard sets Card field to given value.


### GetInstallments

`func (o *CreditCard) GetInstallments() CreditCardInstallments`

GetInstallments returns the Installments field if non-nil, zero value otherwise.

### GetInstallmentsOk

`func (o *CreditCard) GetInstallmentsOk() (*CreditCardInstallments, bool)`

GetInstallmentsOk returns a tuple with the Installments field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstallments

`func (o *CreditCard) SetInstallments(v CreditCardInstallments)`

SetInstallments sets Installments field to given value.


### GetSoftDescriptor

`func (o *CreditCard) GetSoftDescriptor() string`

GetSoftDescriptor returns the SoftDescriptor field if non-nil, zero value otherwise.

### GetSoftDescriptorOk

`func (o *CreditCard) GetSoftDescriptorOk() (*string, bool)`

GetSoftDescriptorOk returns a tuple with the SoftDescriptor field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSoftDescriptor

`func (o *CreditCard) SetSoftDescriptor(v string)`

SetSoftDescriptor sets SoftDescriptor field to given value.

### HasSoftDescriptor

`func (o *CreditCard) HasSoftDescriptor() bool`

HasSoftDescriptor returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


