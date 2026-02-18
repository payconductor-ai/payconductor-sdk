# PostWithdraws200ResponsePayoutAccount

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** | Identificador único da conta de pagamento | 
**OwnerDocument** | **string** | Documento do titular da conta (CPF ou CNPJ) | 
**OwnerName** | **string** | Nome do titular da conta | 
**PixKey** | **string** | Chave PIX utilizada para o saque | 
**PixType** | **string** | Tipo da chave PIX | [default to "Cpf"]

## Methods

### NewPostWithdraws200ResponsePayoutAccount

`func NewPostWithdraws200ResponsePayoutAccount(id string, ownerDocument string, ownerName string, pixKey string, pixType string, ) *PostWithdraws200ResponsePayoutAccount`

NewPostWithdraws200ResponsePayoutAccount instantiates a new PostWithdraws200ResponsePayoutAccount object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPostWithdraws200ResponsePayoutAccountWithDefaults

`func NewPostWithdraws200ResponsePayoutAccountWithDefaults() *PostWithdraws200ResponsePayoutAccount`

NewPostWithdraws200ResponsePayoutAccountWithDefaults instantiates a new PostWithdraws200ResponsePayoutAccount object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *PostWithdraws200ResponsePayoutAccount) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *PostWithdraws200ResponsePayoutAccount) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *PostWithdraws200ResponsePayoutAccount) SetId(v string)`

SetId sets Id field to given value.


### GetOwnerDocument

`func (o *PostWithdraws200ResponsePayoutAccount) GetOwnerDocument() string`

GetOwnerDocument returns the OwnerDocument field if non-nil, zero value otherwise.

### GetOwnerDocumentOk

`func (o *PostWithdraws200ResponsePayoutAccount) GetOwnerDocumentOk() (*string, bool)`

GetOwnerDocumentOk returns a tuple with the OwnerDocument field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOwnerDocument

`func (o *PostWithdraws200ResponsePayoutAccount) SetOwnerDocument(v string)`

SetOwnerDocument sets OwnerDocument field to given value.


### GetOwnerName

`func (o *PostWithdraws200ResponsePayoutAccount) GetOwnerName() string`

GetOwnerName returns the OwnerName field if non-nil, zero value otherwise.

### GetOwnerNameOk

`func (o *PostWithdraws200ResponsePayoutAccount) GetOwnerNameOk() (*string, bool)`

GetOwnerNameOk returns a tuple with the OwnerName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOwnerName

`func (o *PostWithdraws200ResponsePayoutAccount) SetOwnerName(v string)`

SetOwnerName sets OwnerName field to given value.


### GetPixKey

`func (o *PostWithdraws200ResponsePayoutAccount) GetPixKey() string`

GetPixKey returns the PixKey field if non-nil, zero value otherwise.

### GetPixKeyOk

`func (o *PostWithdraws200ResponsePayoutAccount) GetPixKeyOk() (*string, bool)`

GetPixKeyOk returns a tuple with the PixKey field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPixKey

`func (o *PostWithdraws200ResponsePayoutAccount) SetPixKey(v string)`

SetPixKey sets PixKey field to given value.


### GetPixType

`func (o *PostWithdraws200ResponsePayoutAccount) GetPixType() string`

GetPixType returns the PixType field if non-nil, zero value otherwise.

### GetPixTypeOk

`func (o *PostWithdraws200ResponsePayoutAccount) GetPixTypeOk() (*string, bool)`

GetPixTypeOk returns a tuple with the PixType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPixType

`func (o *PostWithdraws200ResponsePayoutAccount) SetPixType(v string)`

SetPixType sets PixType field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


