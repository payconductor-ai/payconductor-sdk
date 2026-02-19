# Customer

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Address** | Pointer to [**CustomerAddress**](CustomerAddress.md) |  | [optional] 
**DocumentNumber** | **string** | Customer CPF or CNPJ without formatting | 
**DocumentType** | **string** |  | 
**Email** | **string** | Customer email | 
**Name** | **string** | Customer full name | 
**PhoneNumber** | Pointer to **string** | Customer phone number in +55 DD 9XXXXXXXX format | [optional] 

## Methods

### NewCustomer

`func NewCustomer(documentNumber string, documentType string, email string, name string, ) *Customer`

NewCustomer instantiates a new Customer object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCustomerWithDefaults

`func NewCustomerWithDefaults() *Customer`

NewCustomerWithDefaults instantiates a new Customer object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAddress

`func (o *Customer) GetAddress() CustomerAddress`

GetAddress returns the Address field if non-nil, zero value otherwise.

### GetAddressOk

`func (o *Customer) GetAddressOk() (*CustomerAddress, bool)`

GetAddressOk returns a tuple with the Address field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAddress

`func (o *Customer) SetAddress(v CustomerAddress)`

SetAddress sets Address field to given value.

### HasAddress

`func (o *Customer) HasAddress() bool`

HasAddress returns a boolean if a field has been set.

### GetDocumentNumber

`func (o *Customer) GetDocumentNumber() string`

GetDocumentNumber returns the DocumentNumber field if non-nil, zero value otherwise.

### GetDocumentNumberOk

`func (o *Customer) GetDocumentNumberOk() (*string, bool)`

GetDocumentNumberOk returns a tuple with the DocumentNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDocumentNumber

`func (o *Customer) SetDocumentNumber(v string)`

SetDocumentNumber sets DocumentNumber field to given value.


### GetDocumentType

`func (o *Customer) GetDocumentType() string`

GetDocumentType returns the DocumentType field if non-nil, zero value otherwise.

### GetDocumentTypeOk

`func (o *Customer) GetDocumentTypeOk() (*string, bool)`

GetDocumentTypeOk returns a tuple with the DocumentType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDocumentType

`func (o *Customer) SetDocumentType(v string)`

SetDocumentType sets DocumentType field to given value.


### GetEmail

`func (o *Customer) GetEmail() string`

GetEmail returns the Email field if non-nil, zero value otherwise.

### GetEmailOk

`func (o *Customer) GetEmailOk() (*string, bool)`

GetEmailOk returns a tuple with the Email field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmail

`func (o *Customer) SetEmail(v string)`

SetEmail sets Email field to given value.


### GetName

`func (o *Customer) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *Customer) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *Customer) SetName(v string)`

SetName sets Name field to given value.


### GetPhoneNumber

`func (o *Customer) GetPhoneNumber() string`

GetPhoneNumber returns the PhoneNumber field if non-nil, zero value otherwise.

### GetPhoneNumberOk

`func (o *Customer) GetPhoneNumberOk() (*string, bool)`

GetPhoneNumberOk returns a tuple with the PhoneNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPhoneNumber

`func (o *Customer) SetPhoneNumber(v string)`

SetPhoneNumber sets PhoneNumber field to given value.

### HasPhoneNumber

`func (o *Customer) HasPhoneNumber() bool`

HasPhoneNumber returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


