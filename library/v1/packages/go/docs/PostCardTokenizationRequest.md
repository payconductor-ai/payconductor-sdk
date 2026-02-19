# PostCardTokenizationRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Card** | [**CompleteCardData**](CompleteCardData.md) |  | 
**SaveCard** | **bool** | Indicates if the card should be saved for future use | 
**Customer** | [**PostCardTokenizationRequestCustomer**](PostCardTokenizationRequestCustomer.md) |  | 

## Methods

### NewPostCardTokenizationRequest

`func NewPostCardTokenizationRequest(card CompleteCardData, saveCard bool, customer PostCardTokenizationRequestCustomer, ) *PostCardTokenizationRequest`

NewPostCardTokenizationRequest instantiates a new PostCardTokenizationRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPostCardTokenizationRequestWithDefaults

`func NewPostCardTokenizationRequestWithDefaults() *PostCardTokenizationRequest`

NewPostCardTokenizationRequestWithDefaults instantiates a new PostCardTokenizationRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetCard

`func (o *PostCardTokenizationRequest) GetCard() CompleteCardData`

GetCard returns the Card field if non-nil, zero value otherwise.

### GetCardOk

`func (o *PostCardTokenizationRequest) GetCardOk() (*CompleteCardData, bool)`

GetCardOk returns a tuple with the Card field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCard

`func (o *PostCardTokenizationRequest) SetCard(v CompleteCardData)`

SetCard sets Card field to given value.


### GetSaveCard

`func (o *PostCardTokenizationRequest) GetSaveCard() bool`

GetSaveCard returns the SaveCard field if non-nil, zero value otherwise.

### GetSaveCardOk

`func (o *PostCardTokenizationRequest) GetSaveCardOk() (*bool, bool)`

GetSaveCardOk returns a tuple with the SaveCard field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSaveCard

`func (o *PostCardTokenizationRequest) SetSaveCard(v bool)`

SetSaveCard sets SaveCard field to given value.


### GetCustomer

`func (o *PostCardTokenizationRequest) GetCustomer() PostCardTokenizationRequestCustomer`

GetCustomer returns the Customer field if non-nil, zero value otherwise.

### GetCustomerOk

`func (o *PostCardTokenizationRequest) GetCustomerOk() (*PostCardTokenizationRequestCustomer, bool)`

GetCustomerOk returns a tuple with the Customer field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCustomer

`func (o *PostCardTokenizationRequest) SetCustomer(v PostCardTokenizationRequestCustomer)`

SetCustomer sets Customer field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


