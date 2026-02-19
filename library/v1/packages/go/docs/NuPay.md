# NuPay

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PaymentMethod** | [**PaymentMethod**](PaymentMethod.md) |  | 
**NuPay** | [**NuPayNuPay**](NuPayNuPay.md) |  | 

## Methods

### NewNuPay

`func NewNuPay(paymentMethod PaymentMethod, nuPay NuPayNuPay, ) *NuPay`

NewNuPay instantiates a new NuPay object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewNuPayWithDefaults

`func NewNuPayWithDefaults() *NuPay`

NewNuPayWithDefaults instantiates a new NuPay object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetPaymentMethod

`func (o *NuPay) GetPaymentMethod() PaymentMethod`

GetPaymentMethod returns the PaymentMethod field if non-nil, zero value otherwise.

### GetPaymentMethodOk

`func (o *NuPay) GetPaymentMethodOk() (*PaymentMethod, bool)`

GetPaymentMethodOk returns a tuple with the PaymentMethod field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPaymentMethod

`func (o *NuPay) SetPaymentMethod(v PaymentMethod)`

SetPaymentMethod sets PaymentMethod field to given value.


### GetNuPay

`func (o *NuPay) GetNuPay() NuPayNuPay`

GetNuPay returns the NuPay field if non-nil, zero value otherwise.

### GetNuPayOk

`func (o *NuPay) GetNuPayOk() (*NuPayNuPay, bool)`

GetNuPayOk returns a tuple with the NuPay field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNuPay

`func (o *NuPay) SetNuPay(v NuPayNuPay)`

SetNuPay sets NuPay field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


