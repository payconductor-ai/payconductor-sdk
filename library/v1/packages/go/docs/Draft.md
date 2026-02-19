# Draft

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PaymentMethod** | [**PaymentMethod**](PaymentMethod.md) |  | 
**ExpirationInSeconds** | Pointer to [**DraftExpirationInSeconds**](DraftExpirationInSeconds.md) |  | [optional] [default to 3600]
**AvailablePaymentMethods** | Pointer to [**[]AvailablePaymentMethods**](AvailablePaymentMethods.md) | Available payment methods for this order | [optional] 

## Methods

### NewDraft

`func NewDraft(paymentMethod PaymentMethod, ) *Draft`

NewDraft instantiates a new Draft object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDraftWithDefaults

`func NewDraftWithDefaults() *Draft`

NewDraftWithDefaults instantiates a new Draft object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetPaymentMethod

`func (o *Draft) GetPaymentMethod() PaymentMethod`

GetPaymentMethod returns the PaymentMethod field if non-nil, zero value otherwise.

### GetPaymentMethodOk

`func (o *Draft) GetPaymentMethodOk() (*PaymentMethod, bool)`

GetPaymentMethodOk returns a tuple with the PaymentMethod field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPaymentMethod

`func (o *Draft) SetPaymentMethod(v PaymentMethod)`

SetPaymentMethod sets PaymentMethod field to given value.


### GetExpirationInSeconds

`func (o *Draft) GetExpirationInSeconds() DraftExpirationInSeconds`

GetExpirationInSeconds returns the ExpirationInSeconds field if non-nil, zero value otherwise.

### GetExpirationInSecondsOk

`func (o *Draft) GetExpirationInSecondsOk() (*DraftExpirationInSeconds, bool)`

GetExpirationInSecondsOk returns a tuple with the ExpirationInSeconds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpirationInSeconds

`func (o *Draft) SetExpirationInSeconds(v DraftExpirationInSeconds)`

SetExpirationInSeconds sets ExpirationInSeconds field to given value.

### HasExpirationInSeconds

`func (o *Draft) HasExpirationInSeconds() bool`

HasExpirationInSeconds returns a boolean if a field has been set.

### GetAvailablePaymentMethods

`func (o *Draft) GetAvailablePaymentMethods() []AvailablePaymentMethods`

GetAvailablePaymentMethods returns the AvailablePaymentMethods field if non-nil, zero value otherwise.

### GetAvailablePaymentMethodsOk

`func (o *Draft) GetAvailablePaymentMethodsOk() (*[]AvailablePaymentMethods, bool)`

GetAvailablePaymentMethodsOk returns a tuple with the AvailablePaymentMethods field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAvailablePaymentMethods

`func (o *Draft) SetAvailablePaymentMethods(v []AvailablePaymentMethods)`

SetAvailablePaymentMethods sets AvailablePaymentMethods field to given value.

### HasAvailablePaymentMethods

`func (o *Draft) HasAvailablePaymentMethods() bool`

HasAvailablePaymentMethods returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


