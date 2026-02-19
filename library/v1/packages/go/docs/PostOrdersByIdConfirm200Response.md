# PostOrdersByIdConfirm200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** | Order ID in the system | 
**ExternalId** | **NullableString** | External order ID (provided by your integration) | 
**Amount** | **float32** | Total order amount | 
**CostFee** | **float32** | Cost fee applied to the order | 
**Pix** | Pointer to [**PostOrders200ResponsePix**](PostOrders200ResponsePix.md) |  | [optional] 
**BankSlip** | Pointer to [**PostOrders200ResponseBankSlip**](PostOrders200ResponseBankSlip.md) |  | [optional] 
**NuPay** | Pointer to [**PostOrders200ResponseNuPay**](PostOrders200ResponseNuPay.md) |  | [optional] 
**PicPay** | Pointer to [**PostOrders200ResponsePicPay**](PostOrders200ResponsePicPay.md) |  | [optional] 
**Status** | **string** |  | 
**PaymentMethod** | **string** |  | 
**PayedAt** | **NullableString** | Date and time when the order was paid (ISO 8601) | 
**ErrorCode** | **NullableString** | Error code, if any | 
**ErrorMessage** | **NullableString** | Error message, if any | 

## Methods

### NewPostOrdersByIdConfirm200Response

`func NewPostOrdersByIdConfirm200Response(id string, externalId NullableString, amount float32, costFee float32, status string, paymentMethod string, payedAt NullableString, errorCode NullableString, errorMessage NullableString, ) *PostOrdersByIdConfirm200Response`

NewPostOrdersByIdConfirm200Response instantiates a new PostOrdersByIdConfirm200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPostOrdersByIdConfirm200ResponseWithDefaults

`func NewPostOrdersByIdConfirm200ResponseWithDefaults() *PostOrdersByIdConfirm200Response`

NewPostOrdersByIdConfirm200ResponseWithDefaults instantiates a new PostOrdersByIdConfirm200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *PostOrdersByIdConfirm200Response) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *PostOrdersByIdConfirm200Response) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *PostOrdersByIdConfirm200Response) SetId(v string)`

SetId sets Id field to given value.


### GetExternalId

`func (o *PostOrdersByIdConfirm200Response) GetExternalId() string`

GetExternalId returns the ExternalId field if non-nil, zero value otherwise.

### GetExternalIdOk

`func (o *PostOrdersByIdConfirm200Response) GetExternalIdOk() (*string, bool)`

GetExternalIdOk returns a tuple with the ExternalId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExternalId

`func (o *PostOrdersByIdConfirm200Response) SetExternalId(v string)`

SetExternalId sets ExternalId field to given value.


### SetExternalIdNil

`func (o *PostOrdersByIdConfirm200Response) SetExternalIdNil(b bool)`

 SetExternalIdNil sets the value for ExternalId to be an explicit nil

### UnsetExternalId
`func (o *PostOrdersByIdConfirm200Response) UnsetExternalId()`

UnsetExternalId ensures that no value is present for ExternalId, not even an explicit nil
### GetAmount

`func (o *PostOrdersByIdConfirm200Response) GetAmount() float32`

GetAmount returns the Amount field if non-nil, zero value otherwise.

### GetAmountOk

`func (o *PostOrdersByIdConfirm200Response) GetAmountOk() (*float32, bool)`

GetAmountOk returns a tuple with the Amount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount

`func (o *PostOrdersByIdConfirm200Response) SetAmount(v float32)`

SetAmount sets Amount field to given value.


### GetCostFee

`func (o *PostOrdersByIdConfirm200Response) GetCostFee() float32`

GetCostFee returns the CostFee field if non-nil, zero value otherwise.

### GetCostFeeOk

`func (o *PostOrdersByIdConfirm200Response) GetCostFeeOk() (*float32, bool)`

GetCostFeeOk returns a tuple with the CostFee field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCostFee

`func (o *PostOrdersByIdConfirm200Response) SetCostFee(v float32)`

SetCostFee sets CostFee field to given value.


### GetPix

`func (o *PostOrdersByIdConfirm200Response) GetPix() PostOrders200ResponsePix`

GetPix returns the Pix field if non-nil, zero value otherwise.

### GetPixOk

`func (o *PostOrdersByIdConfirm200Response) GetPixOk() (*PostOrders200ResponsePix, bool)`

GetPixOk returns a tuple with the Pix field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPix

`func (o *PostOrdersByIdConfirm200Response) SetPix(v PostOrders200ResponsePix)`

SetPix sets Pix field to given value.

### HasPix

`func (o *PostOrdersByIdConfirm200Response) HasPix() bool`

HasPix returns a boolean if a field has been set.

### GetBankSlip

`func (o *PostOrdersByIdConfirm200Response) GetBankSlip() PostOrders200ResponseBankSlip`

GetBankSlip returns the BankSlip field if non-nil, zero value otherwise.

### GetBankSlipOk

`func (o *PostOrdersByIdConfirm200Response) GetBankSlipOk() (*PostOrders200ResponseBankSlip, bool)`

GetBankSlipOk returns a tuple with the BankSlip field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBankSlip

`func (o *PostOrdersByIdConfirm200Response) SetBankSlip(v PostOrders200ResponseBankSlip)`

SetBankSlip sets BankSlip field to given value.

### HasBankSlip

`func (o *PostOrdersByIdConfirm200Response) HasBankSlip() bool`

HasBankSlip returns a boolean if a field has been set.

### GetNuPay

`func (o *PostOrdersByIdConfirm200Response) GetNuPay() PostOrders200ResponseNuPay`

GetNuPay returns the NuPay field if non-nil, zero value otherwise.

### GetNuPayOk

`func (o *PostOrdersByIdConfirm200Response) GetNuPayOk() (*PostOrders200ResponseNuPay, bool)`

GetNuPayOk returns a tuple with the NuPay field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNuPay

`func (o *PostOrdersByIdConfirm200Response) SetNuPay(v PostOrders200ResponseNuPay)`

SetNuPay sets NuPay field to given value.

### HasNuPay

`func (o *PostOrdersByIdConfirm200Response) HasNuPay() bool`

HasNuPay returns a boolean if a field has been set.

### GetPicPay

`func (o *PostOrdersByIdConfirm200Response) GetPicPay() PostOrders200ResponsePicPay`

GetPicPay returns the PicPay field if non-nil, zero value otherwise.

### GetPicPayOk

`func (o *PostOrdersByIdConfirm200Response) GetPicPayOk() (*PostOrders200ResponsePicPay, bool)`

GetPicPayOk returns a tuple with the PicPay field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPicPay

`func (o *PostOrdersByIdConfirm200Response) SetPicPay(v PostOrders200ResponsePicPay)`

SetPicPay sets PicPay field to given value.

### HasPicPay

`func (o *PostOrdersByIdConfirm200Response) HasPicPay() bool`

HasPicPay returns a boolean if a field has been set.

### GetStatus

`func (o *PostOrdersByIdConfirm200Response) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *PostOrdersByIdConfirm200Response) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *PostOrdersByIdConfirm200Response) SetStatus(v string)`

SetStatus sets Status field to given value.


### GetPaymentMethod

`func (o *PostOrdersByIdConfirm200Response) GetPaymentMethod() string`

GetPaymentMethod returns the PaymentMethod field if non-nil, zero value otherwise.

### GetPaymentMethodOk

`func (o *PostOrdersByIdConfirm200Response) GetPaymentMethodOk() (*string, bool)`

GetPaymentMethodOk returns a tuple with the PaymentMethod field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPaymentMethod

`func (o *PostOrdersByIdConfirm200Response) SetPaymentMethod(v string)`

SetPaymentMethod sets PaymentMethod field to given value.


### GetPayedAt

`func (o *PostOrdersByIdConfirm200Response) GetPayedAt() string`

GetPayedAt returns the PayedAt field if non-nil, zero value otherwise.

### GetPayedAtOk

`func (o *PostOrdersByIdConfirm200Response) GetPayedAtOk() (*string, bool)`

GetPayedAtOk returns a tuple with the PayedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPayedAt

`func (o *PostOrdersByIdConfirm200Response) SetPayedAt(v string)`

SetPayedAt sets PayedAt field to given value.


### SetPayedAtNil

`func (o *PostOrdersByIdConfirm200Response) SetPayedAtNil(b bool)`

 SetPayedAtNil sets the value for PayedAt to be an explicit nil

### UnsetPayedAt
`func (o *PostOrdersByIdConfirm200Response) UnsetPayedAt()`

UnsetPayedAt ensures that no value is present for PayedAt, not even an explicit nil
### GetErrorCode

`func (o *PostOrdersByIdConfirm200Response) GetErrorCode() string`

GetErrorCode returns the ErrorCode field if non-nil, zero value otherwise.

### GetErrorCodeOk

`func (o *PostOrdersByIdConfirm200Response) GetErrorCodeOk() (*string, bool)`

GetErrorCodeOk returns a tuple with the ErrorCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetErrorCode

`func (o *PostOrdersByIdConfirm200Response) SetErrorCode(v string)`

SetErrorCode sets ErrorCode field to given value.


### SetErrorCodeNil

`func (o *PostOrdersByIdConfirm200Response) SetErrorCodeNil(b bool)`

 SetErrorCodeNil sets the value for ErrorCode to be an explicit nil

### UnsetErrorCode
`func (o *PostOrdersByIdConfirm200Response) UnsetErrorCode()`

UnsetErrorCode ensures that no value is present for ErrorCode, not even an explicit nil
### GetErrorMessage

`func (o *PostOrdersByIdConfirm200Response) GetErrorMessage() string`

GetErrorMessage returns the ErrorMessage field if non-nil, zero value otherwise.

### GetErrorMessageOk

`func (o *PostOrdersByIdConfirm200Response) GetErrorMessageOk() (*string, bool)`

GetErrorMessageOk returns a tuple with the ErrorMessage field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetErrorMessage

`func (o *PostOrdersByIdConfirm200Response) SetErrorMessage(v string)`

SetErrorMessage sets ErrorMessage field to given value.


### SetErrorMessageNil

`func (o *PostOrdersByIdConfirm200Response) SetErrorMessageNil(b bool)`

 SetErrorMessageNil sets the value for ErrorMessage to be an explicit nil

### UnsetErrorMessage
`func (o *PostOrdersByIdConfirm200Response) UnsetErrorMessage()`

UnsetErrorMessage ensures that no value is present for ErrorMessage, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


