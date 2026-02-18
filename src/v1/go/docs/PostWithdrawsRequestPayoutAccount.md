# PostWithdrawsRequestPayoutAccount

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OwnerDocument** | **string** | Documento do titular da conta (CPF ou CNPJ) | 
**OwnerName** | **string** | Nome do titular da conta | 
**PixKey** | **string** | PIX key for withdrawal | 
**PixType** | **string** | PIX key type | [default to "Cnpj"]

## Methods

### NewPostWithdrawsRequestPayoutAccount

`func NewPostWithdrawsRequestPayoutAccount(ownerDocument string, ownerName string, pixKey string, pixType string, ) *PostWithdrawsRequestPayoutAccount`

NewPostWithdrawsRequestPayoutAccount instantiates a new PostWithdrawsRequestPayoutAccount object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPostWithdrawsRequestPayoutAccountWithDefaults

`func NewPostWithdrawsRequestPayoutAccountWithDefaults() *PostWithdrawsRequestPayoutAccount`

NewPostWithdrawsRequestPayoutAccountWithDefaults instantiates a new PostWithdrawsRequestPayoutAccount object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOwnerDocument

`func (o *PostWithdrawsRequestPayoutAccount) GetOwnerDocument() string`

GetOwnerDocument returns the OwnerDocument field if non-nil, zero value otherwise.

### GetOwnerDocumentOk

`func (o *PostWithdrawsRequestPayoutAccount) GetOwnerDocumentOk() (*string, bool)`

GetOwnerDocumentOk returns a tuple with the OwnerDocument field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOwnerDocument

`func (o *PostWithdrawsRequestPayoutAccount) SetOwnerDocument(v string)`

SetOwnerDocument sets OwnerDocument field to given value.


### GetOwnerName

`func (o *PostWithdrawsRequestPayoutAccount) GetOwnerName() string`

GetOwnerName returns the OwnerName field if non-nil, zero value otherwise.

### GetOwnerNameOk

`func (o *PostWithdrawsRequestPayoutAccount) GetOwnerNameOk() (*string, bool)`

GetOwnerNameOk returns a tuple with the OwnerName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOwnerName

`func (o *PostWithdrawsRequestPayoutAccount) SetOwnerName(v string)`

SetOwnerName sets OwnerName field to given value.


### GetPixKey

`func (o *PostWithdrawsRequestPayoutAccount) GetPixKey() string`

GetPixKey returns the PixKey field if non-nil, zero value otherwise.

### GetPixKeyOk

`func (o *PostWithdrawsRequestPayoutAccount) GetPixKeyOk() (*string, bool)`

GetPixKeyOk returns a tuple with the PixKey field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPixKey

`func (o *PostWithdrawsRequestPayoutAccount) SetPixKey(v string)`

SetPixKey sets PixKey field to given value.


### GetPixType

`func (o *PostWithdrawsRequestPayoutAccount) GetPixType() string`

GetPixType returns the PixType field if non-nil, zero value otherwise.

### GetPixTypeOk

`func (o *PostWithdrawsRequestPayoutAccount) GetPixTypeOk() (*string, bool)`

GetPixTypeOk returns a tuple with the PixType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPixType

`func (o *PostWithdrawsRequestPayoutAccount) SetPixType(v string)`

SetPixType sets PixType field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


