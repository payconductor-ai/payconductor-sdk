# MerchantInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Document** | **string** | CPF ou CNPJ do merchant sem formatação | 
**Email** | **string** | Email do merchant | 
**Name** | **string** | Nome do merchant | 

## Methods

### NewMerchantInput

`func NewMerchantInput(document string, email string, name string, ) *MerchantInput`

NewMerchantInput instantiates a new MerchantInput object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewMerchantInputWithDefaults

`func NewMerchantInputWithDefaults() *MerchantInput`

NewMerchantInputWithDefaults instantiates a new MerchantInput object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDocument

`func (o *MerchantInput) GetDocument() string`

GetDocument returns the Document field if non-nil, zero value otherwise.

### GetDocumentOk

`func (o *MerchantInput) GetDocumentOk() (*string, bool)`

GetDocumentOk returns a tuple with the Document field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDocument

`func (o *MerchantInput) SetDocument(v string)`

SetDocument sets Document field to given value.


### GetEmail

`func (o *MerchantInput) GetEmail() string`

GetEmail returns the Email field if non-nil, zero value otherwise.

### GetEmailOk

`func (o *MerchantInput) GetEmailOk() (*string, bool)`

GetEmailOk returns a tuple with the Email field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmail

`func (o *MerchantInput) SetEmail(v string)`

SetEmail sets Email field to given value.


### GetName

`func (o *MerchantInput) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *MerchantInput) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *MerchantInput) SetName(v string)`

SetName sets Name field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


