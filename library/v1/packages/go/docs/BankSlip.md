# BankSlip

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PaymentMethod** | [**PaymentMethod**](PaymentMethod.md) |  | 
**ExpirationInDays** | Pointer to [**BankSlipExpirationInDays**](BankSlipExpirationInDays.md) |  | [optional] [default to 7]

## Methods

### NewBankSlip

`func NewBankSlip(paymentMethod PaymentMethod, ) *BankSlip`

NewBankSlip instantiates a new BankSlip object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewBankSlipWithDefaults

`func NewBankSlipWithDefaults() *BankSlip`

NewBankSlipWithDefaults instantiates a new BankSlip object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetPaymentMethod

`func (o *BankSlip) GetPaymentMethod() PaymentMethod`

GetPaymentMethod returns the PaymentMethod field if non-nil, zero value otherwise.

### GetPaymentMethodOk

`func (o *BankSlip) GetPaymentMethodOk() (*PaymentMethod, bool)`

GetPaymentMethodOk returns a tuple with the PaymentMethod field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPaymentMethod

`func (o *BankSlip) SetPaymentMethod(v PaymentMethod)`

SetPaymentMethod sets PaymentMethod field to given value.


### GetExpirationInDays

`func (o *BankSlip) GetExpirationInDays() BankSlipExpirationInDays`

GetExpirationInDays returns the ExpirationInDays field if non-nil, zero value otherwise.

### GetExpirationInDaysOk

`func (o *BankSlip) GetExpirationInDaysOk() (*BankSlipExpirationInDays, bool)`

GetExpirationInDaysOk returns a tuple with the ExpirationInDays field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpirationInDays

`func (o *BankSlip) SetExpirationInDays(v BankSlipExpirationInDays)`

SetExpirationInDays sets ExpirationInDays field to given value.

### HasExpirationInDays

`func (o *BankSlip) HasExpirationInDays() bool`

HasExpirationInDays returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


