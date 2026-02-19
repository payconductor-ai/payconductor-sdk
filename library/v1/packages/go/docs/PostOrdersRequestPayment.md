# PostOrdersRequestPayment

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PaymentMethod** | **string** |  | 
**ExpirationInSeconds** | Pointer to [**DraftExpirationInSeconds**](DraftExpirationInSeconds.md) |  | [optional] [default to 3600]
**Card** | [**CreditCardCard**](CreditCardCard.md) |  | 
**Installments** | [**CreditCardInstallments**](CreditCardInstallments.md) |  | [default to 1]
**SoftDescriptor** | Pointer to **string** | Text that will appear on the card statement (soft descriptor) | [optional] 
**ExpirationInDays** | Pointer to [**BankSlipExpirationInDays**](BankSlipExpirationInDays.md) |  | [optional] [default to 7]
**NuPay** | [**NuPayNuPay**](NuPayNuPay.md) |  | 
**AvailablePaymentMethods** | Pointer to [**[]DraftAvailablePaymentMethodsInner**](DraftAvailablePaymentMethodsInner.md) | Available payment methods for this order | [optional] 

## Methods

### NewPostOrdersRequestPayment

`func NewPostOrdersRequestPayment(paymentMethod string, card CreditCardCard, installments CreditCardInstallments, nuPay NuPayNuPay, ) *PostOrdersRequestPayment`

NewPostOrdersRequestPayment instantiates a new PostOrdersRequestPayment object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPostOrdersRequestPaymentWithDefaults

`func NewPostOrdersRequestPaymentWithDefaults() *PostOrdersRequestPayment`

NewPostOrdersRequestPaymentWithDefaults instantiates a new PostOrdersRequestPayment object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetPaymentMethod

`func (o *PostOrdersRequestPayment) GetPaymentMethod() string`

GetPaymentMethod returns the PaymentMethod field if non-nil, zero value otherwise.

### GetPaymentMethodOk

`func (o *PostOrdersRequestPayment) GetPaymentMethodOk() (*string, bool)`

GetPaymentMethodOk returns a tuple with the PaymentMethod field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPaymentMethod

`func (o *PostOrdersRequestPayment) SetPaymentMethod(v string)`

SetPaymentMethod sets PaymentMethod field to given value.


### GetExpirationInSeconds

`func (o *PostOrdersRequestPayment) GetExpirationInSeconds() DraftExpirationInSeconds`

GetExpirationInSeconds returns the ExpirationInSeconds field if non-nil, zero value otherwise.

### GetExpirationInSecondsOk

`func (o *PostOrdersRequestPayment) GetExpirationInSecondsOk() (*DraftExpirationInSeconds, bool)`

GetExpirationInSecondsOk returns a tuple with the ExpirationInSeconds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpirationInSeconds

`func (o *PostOrdersRequestPayment) SetExpirationInSeconds(v DraftExpirationInSeconds)`

SetExpirationInSeconds sets ExpirationInSeconds field to given value.

### HasExpirationInSeconds

`func (o *PostOrdersRequestPayment) HasExpirationInSeconds() bool`

HasExpirationInSeconds returns a boolean if a field has been set.

### GetCard

`func (o *PostOrdersRequestPayment) GetCard() CreditCardCard`

GetCard returns the Card field if non-nil, zero value otherwise.

### GetCardOk

`func (o *PostOrdersRequestPayment) GetCardOk() (*CreditCardCard, bool)`

GetCardOk returns a tuple with the Card field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCard

`func (o *PostOrdersRequestPayment) SetCard(v CreditCardCard)`

SetCard sets Card field to given value.


### GetInstallments

`func (o *PostOrdersRequestPayment) GetInstallments() CreditCardInstallments`

GetInstallments returns the Installments field if non-nil, zero value otherwise.

### GetInstallmentsOk

`func (o *PostOrdersRequestPayment) GetInstallmentsOk() (*CreditCardInstallments, bool)`

GetInstallmentsOk returns a tuple with the Installments field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstallments

`func (o *PostOrdersRequestPayment) SetInstallments(v CreditCardInstallments)`

SetInstallments sets Installments field to given value.


### GetSoftDescriptor

`func (o *PostOrdersRequestPayment) GetSoftDescriptor() string`

GetSoftDescriptor returns the SoftDescriptor field if non-nil, zero value otherwise.

### GetSoftDescriptorOk

`func (o *PostOrdersRequestPayment) GetSoftDescriptorOk() (*string, bool)`

GetSoftDescriptorOk returns a tuple with the SoftDescriptor field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSoftDescriptor

`func (o *PostOrdersRequestPayment) SetSoftDescriptor(v string)`

SetSoftDescriptor sets SoftDescriptor field to given value.

### HasSoftDescriptor

`func (o *PostOrdersRequestPayment) HasSoftDescriptor() bool`

HasSoftDescriptor returns a boolean if a field has been set.

### GetExpirationInDays

`func (o *PostOrdersRequestPayment) GetExpirationInDays() BankSlipExpirationInDays`

GetExpirationInDays returns the ExpirationInDays field if non-nil, zero value otherwise.

### GetExpirationInDaysOk

`func (o *PostOrdersRequestPayment) GetExpirationInDaysOk() (*BankSlipExpirationInDays, bool)`

GetExpirationInDaysOk returns a tuple with the ExpirationInDays field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpirationInDays

`func (o *PostOrdersRequestPayment) SetExpirationInDays(v BankSlipExpirationInDays)`

SetExpirationInDays sets ExpirationInDays field to given value.

### HasExpirationInDays

`func (o *PostOrdersRequestPayment) HasExpirationInDays() bool`

HasExpirationInDays returns a boolean if a field has been set.

### GetNuPay

`func (o *PostOrdersRequestPayment) GetNuPay() NuPayNuPay`

GetNuPay returns the NuPay field if non-nil, zero value otherwise.

### GetNuPayOk

`func (o *PostOrdersRequestPayment) GetNuPayOk() (*NuPayNuPay, bool)`

GetNuPayOk returns a tuple with the NuPay field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNuPay

`func (o *PostOrdersRequestPayment) SetNuPay(v NuPayNuPay)`

SetNuPay sets NuPay field to given value.


### GetAvailablePaymentMethods

`func (o *PostOrdersRequestPayment) GetAvailablePaymentMethods() []DraftAvailablePaymentMethodsInner`

GetAvailablePaymentMethods returns the AvailablePaymentMethods field if non-nil, zero value otherwise.

### GetAvailablePaymentMethodsOk

`func (o *PostOrdersRequestPayment) GetAvailablePaymentMethodsOk() (*[]DraftAvailablePaymentMethodsInner, bool)`

GetAvailablePaymentMethodsOk returns a tuple with the AvailablePaymentMethods field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAvailablePaymentMethods

`func (o *PostOrdersRequestPayment) SetAvailablePaymentMethods(v []DraftAvailablePaymentMethodsInner)`

SetAvailablePaymentMethods sets AvailablePaymentMethods field to given value.

### HasAvailablePaymentMethods

`func (o *PostOrdersRequestPayment) HasAvailablePaymentMethods() bool`

HasAvailablePaymentMethods returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


