# Cliente

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Address** | Pointer to [**EndereODoCliente**](EndereODoCliente.md) |  | [optional] 
**DocumentNumber** | **string** | CPF ou CNPJ do cliente sem formatação | 
**DocumentType** | **string** |  | 
**Email** | **string** | Email do cliente | 
**Name** | **string** | Nome completo do cliente | 
**PhoneNumber** | Pointer to **string** | Número de telefone do cliente no formato +55 DD 9XXXXXXXX | [optional] 

## Methods

### NewCliente

`func NewCliente(documentNumber string, documentType string, email string, name string, ) *Cliente`

NewCliente instantiates a new Cliente object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewClienteWithDefaults

`func NewClienteWithDefaults() *Cliente`

NewClienteWithDefaults instantiates a new Cliente object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAddress

`func (o *Cliente) GetAddress() EndereODoCliente`

GetAddress returns the Address field if non-nil, zero value otherwise.

### GetAddressOk

`func (o *Cliente) GetAddressOk() (*EndereODoCliente, bool)`

GetAddressOk returns a tuple with the Address field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAddress

`func (o *Cliente) SetAddress(v EndereODoCliente)`

SetAddress sets Address field to given value.

### HasAddress

`func (o *Cliente) HasAddress() bool`

HasAddress returns a boolean if a field has been set.

### GetDocumentNumber

`func (o *Cliente) GetDocumentNumber() string`

GetDocumentNumber returns the DocumentNumber field if non-nil, zero value otherwise.

### GetDocumentNumberOk

`func (o *Cliente) GetDocumentNumberOk() (*string, bool)`

GetDocumentNumberOk returns a tuple with the DocumentNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDocumentNumber

`func (o *Cliente) SetDocumentNumber(v string)`

SetDocumentNumber sets DocumentNumber field to given value.


### GetDocumentType

`func (o *Cliente) GetDocumentType() string`

GetDocumentType returns the DocumentType field if non-nil, zero value otherwise.

### GetDocumentTypeOk

`func (o *Cliente) GetDocumentTypeOk() (*string, bool)`

GetDocumentTypeOk returns a tuple with the DocumentType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDocumentType

`func (o *Cliente) SetDocumentType(v string)`

SetDocumentType sets DocumentType field to given value.


### GetEmail

`func (o *Cliente) GetEmail() string`

GetEmail returns the Email field if non-nil, zero value otherwise.

### GetEmailOk

`func (o *Cliente) GetEmailOk() (*string, bool)`

GetEmailOk returns a tuple with the Email field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmail

`func (o *Cliente) SetEmail(v string)`

SetEmail sets Email field to given value.


### GetName

`func (o *Cliente) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *Cliente) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *Cliente) SetName(v string)`

SetName sets Name field to given value.


### GetPhoneNumber

`func (o *Cliente) GetPhoneNumber() string`

GetPhoneNumber returns the PhoneNumber field if non-nil, zero value otherwise.

### GetPhoneNumberOk

`func (o *Cliente) GetPhoneNumberOk() (*string, bool)`

GetPhoneNumberOk returns a tuple with the PhoneNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPhoneNumber

`func (o *Cliente) SetPhoneNumber(v string)`

SetPhoneNumber sets PhoneNumber field to given value.

### HasPhoneNumber

`func (o *Cliente) HasPhoneNumber() bool`

HasPhoneNumber returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


