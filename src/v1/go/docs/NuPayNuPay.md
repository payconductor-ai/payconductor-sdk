# NuPayNuPay

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CancelUrl** | **string** | URL de cancelamento do pagamento | 
**MerchantName** | **string** | Nome do comerciante | 
**ReturnUrl** | **string** | URL de retorno após a conclusão do pagamento | 
**StoreName** | Pointer to **string** | Nome da loja | [optional] 

## Methods

### NewNuPayNuPay

`func NewNuPayNuPay(cancelUrl string, merchantName string, returnUrl string, ) *NuPayNuPay`

NewNuPayNuPay instantiates a new NuPayNuPay object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewNuPayNuPayWithDefaults

`func NewNuPayNuPayWithDefaults() *NuPayNuPay`

NewNuPayNuPayWithDefaults instantiates a new NuPayNuPay object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetCancelUrl

`func (o *NuPayNuPay) GetCancelUrl() string`

GetCancelUrl returns the CancelUrl field if non-nil, zero value otherwise.

### GetCancelUrlOk

`func (o *NuPayNuPay) GetCancelUrlOk() (*string, bool)`

GetCancelUrlOk returns a tuple with the CancelUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCancelUrl

`func (o *NuPayNuPay) SetCancelUrl(v string)`

SetCancelUrl sets CancelUrl field to given value.


### GetMerchantName

`func (o *NuPayNuPay) GetMerchantName() string`

GetMerchantName returns the MerchantName field if non-nil, zero value otherwise.

### GetMerchantNameOk

`func (o *NuPayNuPay) GetMerchantNameOk() (*string, bool)`

GetMerchantNameOk returns a tuple with the MerchantName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMerchantName

`func (o *NuPayNuPay) SetMerchantName(v string)`

SetMerchantName sets MerchantName field to given value.


### GetReturnUrl

`func (o *NuPayNuPay) GetReturnUrl() string`

GetReturnUrl returns the ReturnUrl field if non-nil, zero value otherwise.

### GetReturnUrlOk

`func (o *NuPayNuPay) GetReturnUrlOk() (*string, bool)`

GetReturnUrlOk returns a tuple with the ReturnUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReturnUrl

`func (o *NuPayNuPay) SetReturnUrl(v string)`

SetReturnUrl sets ReturnUrl field to given value.


### GetStoreName

`func (o *NuPayNuPay) GetStoreName() string`

GetStoreName returns the StoreName field if non-nil, zero value otherwise.

### GetStoreNameOk

`func (o *NuPayNuPay) GetStoreNameOk() (*string, bool)`

GetStoreNameOk returns a tuple with the StoreName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStoreName

`func (o *NuPayNuPay) SetStoreName(v string)`

SetStoreName sets StoreName field to given value.

### HasStoreName

`func (o *NuPayNuPay) HasStoreName() bool`

HasStoreName returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


