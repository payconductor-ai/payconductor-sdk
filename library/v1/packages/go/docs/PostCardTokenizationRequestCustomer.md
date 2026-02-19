# PostCardTokenizationRequestCustomer

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Address** | Pointer to [**CustomerAddress**](CustomerAddress.md) |  | [optional] 
**DocumentNumber** | **string** | Customer CPF or CNPJ without formatting | 
**DocumentType** | [**Customer2DocumentType**](Customer2DocumentType.md) |  | 
**Email** | **string** | Customer email | 
**Name** | **string** | Customer full name | 
**PhoneNumber** | Pointer to **string** | Customer phone number in +55 DD 9XXXXXXXX format | [optional] 
**Id** | **string** | ID do cliente existente | 

## Methods

### NewPostCardTokenizationRequestCustomer

`func NewPostCardTokenizationRequestCustomer(documentNumber string, documentType Customer2DocumentType, email string, name string, id string, ) *PostCardTokenizationRequestCustomer`

NewPostCardTokenizationRequestCustomer instantiates a new PostCardTokenizationRequestCustomer object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPostCardTokenizationRequestCustomerWithDefaults

`func NewPostCardTokenizationRequestCustomerWithDefaults() *PostCardTokenizationRequestCustomer`

NewPostCardTokenizationRequestCustomerWithDefaults instantiates a new PostCardTokenizationRequestCustomer object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAddress

`func (o *PostCardTokenizationRequestCustomer) GetAddress() CustomerAddress`

GetAddress returns the Address field if non-nil, zero value otherwise.

### GetAddressOk

`func (o *PostCardTokenizationRequestCustomer) GetAddressOk() (*CustomerAddress, bool)`

GetAddressOk returns a tuple with the Address field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAddress

`func (o *PostCardTokenizationRequestCustomer) SetAddress(v CustomerAddress)`

SetAddress sets Address field to given value.

### HasAddress

`func (o *PostCardTokenizationRequestCustomer) HasAddress() bool`

HasAddress returns a boolean if a field has been set.

### GetDocumentNumber

`func (o *PostCardTokenizationRequestCustomer) GetDocumentNumber() string`

GetDocumentNumber returns the DocumentNumber field if non-nil, zero value otherwise.

### GetDocumentNumberOk

`func (o *PostCardTokenizationRequestCustomer) GetDocumentNumberOk() (*string, bool)`

GetDocumentNumberOk returns a tuple with the DocumentNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDocumentNumber

`func (o *PostCardTokenizationRequestCustomer) SetDocumentNumber(v string)`

SetDocumentNumber sets DocumentNumber field to given value.


### GetDocumentType

`func (o *PostCardTokenizationRequestCustomer) GetDocumentType() Customer2DocumentType`

GetDocumentType returns the DocumentType field if non-nil, zero value otherwise.

### GetDocumentTypeOk

`func (o *PostCardTokenizationRequestCustomer) GetDocumentTypeOk() (*Customer2DocumentType, bool)`

GetDocumentTypeOk returns a tuple with the DocumentType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDocumentType

`func (o *PostCardTokenizationRequestCustomer) SetDocumentType(v Customer2DocumentType)`

SetDocumentType sets DocumentType field to given value.


### GetEmail

`func (o *PostCardTokenizationRequestCustomer) GetEmail() string`

GetEmail returns the Email field if non-nil, zero value otherwise.

### GetEmailOk

`func (o *PostCardTokenizationRequestCustomer) GetEmailOk() (*string, bool)`

GetEmailOk returns a tuple with the Email field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmail

`func (o *PostCardTokenizationRequestCustomer) SetEmail(v string)`

SetEmail sets Email field to given value.


### GetName

`func (o *PostCardTokenizationRequestCustomer) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *PostCardTokenizationRequestCustomer) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *PostCardTokenizationRequestCustomer) SetName(v string)`

SetName sets Name field to given value.


### GetPhoneNumber

`func (o *PostCardTokenizationRequestCustomer) GetPhoneNumber() string`

GetPhoneNumber returns the PhoneNumber field if non-nil, zero value otherwise.

### GetPhoneNumberOk

`func (o *PostCardTokenizationRequestCustomer) GetPhoneNumberOk() (*string, bool)`

GetPhoneNumberOk returns a tuple with the PhoneNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPhoneNumber

`func (o *PostCardTokenizationRequestCustomer) SetPhoneNumber(v string)`

SetPhoneNumber sets PhoneNumber field to given value.

### HasPhoneNumber

`func (o *PostCardTokenizationRequestCustomer) HasPhoneNumber() bool`

HasPhoneNumber returns a boolean if a field has been set.

### GetId

`func (o *PostCardTokenizationRequestCustomer) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *PostCardTokenizationRequestCustomer) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *PostCardTokenizationRequestCustomer) SetId(v string)`

SetId sets Id field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


