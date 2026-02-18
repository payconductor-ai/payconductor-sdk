# PostOrders200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** | Order ID in the system | 
**ExternalId** | **NullableString** | External order ID (provided by your integration) | 
**ExternalIntegrationKey** | **string** | Provider used to process the order | 
**ExternalIntegrationId** | **NullableString** | Order ID in the payment provider | 
**Amount** | **float32** | Total order amount | 
**CostFee** | **float32** | Cost fee applied to the order | 
**Pix** | Pointer to [**PostOrders200ResponsePix**](PostOrders200ResponsePix.md) |  | [optional] 
**BankSlip** | Pointer to [**PostOrders200ResponseBankSlip**](PostOrders200ResponseBankSlip.md) |  | [optional] 
**NuPay** | Pointer to [**PostOrders200ResponseNuPay**](PostOrders200ResponseNuPay.md) |  | [optional] 
**PicPay** | Pointer to [**PostOrders200ResponsePicPay**](PostOrders200ResponsePicPay.md) |  | [optional] 
**CreditCard** | Pointer to [**PostOrders200ResponseCreditCard**](PostOrders200ResponseCreditCard.md) |  | [optional] 
**Status** | **string** |  | 
**PaymentMethod** | **string** |  | 
**PayedAt** | **NullableString** | Date and time when the order was paid (ISO 8601) | 
**ErrorCode** | **NullableString** | Error code, if any | 
**ErrorMessage** | **NullableString** | Error message, if any | 
**OrderItems** | [**[]PostOrders200ResponseOrderItemsInner**](PostOrders200ResponseOrderItemsInner.md) |  | 
**Session** | Pointer to [**NullablePostOrders200ResponseSession**](PostOrders200ResponseSession.md) |  | [optional] 

## Methods

### NewPostOrders200Response

`func NewPostOrders200Response(id string, externalId NullableString, externalIntegrationKey string, externalIntegrationId NullableString, amount float32, costFee float32, status string, paymentMethod string, payedAt NullableString, errorCode NullableString, errorMessage NullableString, orderItems []PostOrders200ResponseOrderItemsInner, ) *PostOrders200Response`

NewPostOrders200Response instantiates a new PostOrders200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPostOrders200ResponseWithDefaults

`func NewPostOrders200ResponseWithDefaults() *PostOrders200Response`

NewPostOrders200ResponseWithDefaults instantiates a new PostOrders200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *PostOrders200Response) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *PostOrders200Response) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *PostOrders200Response) SetId(v string)`

SetId sets Id field to given value.


### GetExternalId

`func (o *PostOrders200Response) GetExternalId() string`

GetExternalId returns the ExternalId field if non-nil, zero value otherwise.

### GetExternalIdOk

`func (o *PostOrders200Response) GetExternalIdOk() (*string, bool)`

GetExternalIdOk returns a tuple with the ExternalId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExternalId

`func (o *PostOrders200Response) SetExternalId(v string)`

SetExternalId sets ExternalId field to given value.


### SetExternalIdNil

`func (o *PostOrders200Response) SetExternalIdNil(b bool)`

 SetExternalIdNil sets the value for ExternalId to be an explicit nil

### UnsetExternalId
`func (o *PostOrders200Response) UnsetExternalId()`

UnsetExternalId ensures that no value is present for ExternalId, not even an explicit nil
### GetExternalIntegrationKey

`func (o *PostOrders200Response) GetExternalIntegrationKey() string`

GetExternalIntegrationKey returns the ExternalIntegrationKey field if non-nil, zero value otherwise.

### GetExternalIntegrationKeyOk

`func (o *PostOrders200Response) GetExternalIntegrationKeyOk() (*string, bool)`

GetExternalIntegrationKeyOk returns a tuple with the ExternalIntegrationKey field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExternalIntegrationKey

`func (o *PostOrders200Response) SetExternalIntegrationKey(v string)`

SetExternalIntegrationKey sets ExternalIntegrationKey field to given value.


### GetExternalIntegrationId

`func (o *PostOrders200Response) GetExternalIntegrationId() string`

GetExternalIntegrationId returns the ExternalIntegrationId field if non-nil, zero value otherwise.

### GetExternalIntegrationIdOk

`func (o *PostOrders200Response) GetExternalIntegrationIdOk() (*string, bool)`

GetExternalIntegrationIdOk returns a tuple with the ExternalIntegrationId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExternalIntegrationId

`func (o *PostOrders200Response) SetExternalIntegrationId(v string)`

SetExternalIntegrationId sets ExternalIntegrationId field to given value.


### SetExternalIntegrationIdNil

`func (o *PostOrders200Response) SetExternalIntegrationIdNil(b bool)`

 SetExternalIntegrationIdNil sets the value for ExternalIntegrationId to be an explicit nil

### UnsetExternalIntegrationId
`func (o *PostOrders200Response) UnsetExternalIntegrationId()`

UnsetExternalIntegrationId ensures that no value is present for ExternalIntegrationId, not even an explicit nil
### GetAmount

`func (o *PostOrders200Response) GetAmount() float32`

GetAmount returns the Amount field if non-nil, zero value otherwise.

### GetAmountOk

`func (o *PostOrders200Response) GetAmountOk() (*float32, bool)`

GetAmountOk returns a tuple with the Amount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount

`func (o *PostOrders200Response) SetAmount(v float32)`

SetAmount sets Amount field to given value.


### GetCostFee

`func (o *PostOrders200Response) GetCostFee() float32`

GetCostFee returns the CostFee field if non-nil, zero value otherwise.

### GetCostFeeOk

`func (o *PostOrders200Response) GetCostFeeOk() (*float32, bool)`

GetCostFeeOk returns a tuple with the CostFee field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCostFee

`func (o *PostOrders200Response) SetCostFee(v float32)`

SetCostFee sets CostFee field to given value.


### GetPix

`func (o *PostOrders200Response) GetPix() PostOrders200ResponsePix`

GetPix returns the Pix field if non-nil, zero value otherwise.

### GetPixOk

`func (o *PostOrders200Response) GetPixOk() (*PostOrders200ResponsePix, bool)`

GetPixOk returns a tuple with the Pix field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPix

`func (o *PostOrders200Response) SetPix(v PostOrders200ResponsePix)`

SetPix sets Pix field to given value.

### HasPix

`func (o *PostOrders200Response) HasPix() bool`

HasPix returns a boolean if a field has been set.

### GetBankSlip

`func (o *PostOrders200Response) GetBankSlip() PostOrders200ResponseBankSlip`

GetBankSlip returns the BankSlip field if non-nil, zero value otherwise.

### GetBankSlipOk

`func (o *PostOrders200Response) GetBankSlipOk() (*PostOrders200ResponseBankSlip, bool)`

GetBankSlipOk returns a tuple with the BankSlip field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBankSlip

`func (o *PostOrders200Response) SetBankSlip(v PostOrders200ResponseBankSlip)`

SetBankSlip sets BankSlip field to given value.

### HasBankSlip

`func (o *PostOrders200Response) HasBankSlip() bool`

HasBankSlip returns a boolean if a field has been set.

### GetNuPay

`func (o *PostOrders200Response) GetNuPay() PostOrders200ResponseNuPay`

GetNuPay returns the NuPay field if non-nil, zero value otherwise.

### GetNuPayOk

`func (o *PostOrders200Response) GetNuPayOk() (*PostOrders200ResponseNuPay, bool)`

GetNuPayOk returns a tuple with the NuPay field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNuPay

`func (o *PostOrders200Response) SetNuPay(v PostOrders200ResponseNuPay)`

SetNuPay sets NuPay field to given value.

### HasNuPay

`func (o *PostOrders200Response) HasNuPay() bool`

HasNuPay returns a boolean if a field has been set.

### GetPicPay

`func (o *PostOrders200Response) GetPicPay() PostOrders200ResponsePicPay`

GetPicPay returns the PicPay field if non-nil, zero value otherwise.

### GetPicPayOk

`func (o *PostOrders200Response) GetPicPayOk() (*PostOrders200ResponsePicPay, bool)`

GetPicPayOk returns a tuple with the PicPay field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPicPay

`func (o *PostOrders200Response) SetPicPay(v PostOrders200ResponsePicPay)`

SetPicPay sets PicPay field to given value.

### HasPicPay

`func (o *PostOrders200Response) HasPicPay() bool`

HasPicPay returns a boolean if a field has been set.

### GetCreditCard

`func (o *PostOrders200Response) GetCreditCard() PostOrders200ResponseCreditCard`

GetCreditCard returns the CreditCard field if non-nil, zero value otherwise.

### GetCreditCardOk

`func (o *PostOrders200Response) GetCreditCardOk() (*PostOrders200ResponseCreditCard, bool)`

GetCreditCardOk returns a tuple with the CreditCard field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreditCard

`func (o *PostOrders200Response) SetCreditCard(v PostOrders200ResponseCreditCard)`

SetCreditCard sets CreditCard field to given value.

### HasCreditCard

`func (o *PostOrders200Response) HasCreditCard() bool`

HasCreditCard returns a boolean if a field has been set.

### GetStatus

`func (o *PostOrders200Response) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *PostOrders200Response) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *PostOrders200Response) SetStatus(v string)`

SetStatus sets Status field to given value.


### GetPaymentMethod

`func (o *PostOrders200Response) GetPaymentMethod() string`

GetPaymentMethod returns the PaymentMethod field if non-nil, zero value otherwise.

### GetPaymentMethodOk

`func (o *PostOrders200Response) GetPaymentMethodOk() (*string, bool)`

GetPaymentMethodOk returns a tuple with the PaymentMethod field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPaymentMethod

`func (o *PostOrders200Response) SetPaymentMethod(v string)`

SetPaymentMethod sets PaymentMethod field to given value.


### GetPayedAt

`func (o *PostOrders200Response) GetPayedAt() string`

GetPayedAt returns the PayedAt field if non-nil, zero value otherwise.

### GetPayedAtOk

`func (o *PostOrders200Response) GetPayedAtOk() (*string, bool)`

GetPayedAtOk returns a tuple with the PayedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPayedAt

`func (o *PostOrders200Response) SetPayedAt(v string)`

SetPayedAt sets PayedAt field to given value.


### SetPayedAtNil

`func (o *PostOrders200Response) SetPayedAtNil(b bool)`

 SetPayedAtNil sets the value for PayedAt to be an explicit nil

### UnsetPayedAt
`func (o *PostOrders200Response) UnsetPayedAt()`

UnsetPayedAt ensures that no value is present for PayedAt, not even an explicit nil
### GetErrorCode

`func (o *PostOrders200Response) GetErrorCode() string`

GetErrorCode returns the ErrorCode field if non-nil, zero value otherwise.

### GetErrorCodeOk

`func (o *PostOrders200Response) GetErrorCodeOk() (*string, bool)`

GetErrorCodeOk returns a tuple with the ErrorCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetErrorCode

`func (o *PostOrders200Response) SetErrorCode(v string)`

SetErrorCode sets ErrorCode field to given value.


### SetErrorCodeNil

`func (o *PostOrders200Response) SetErrorCodeNil(b bool)`

 SetErrorCodeNil sets the value for ErrorCode to be an explicit nil

### UnsetErrorCode
`func (o *PostOrders200Response) UnsetErrorCode()`

UnsetErrorCode ensures that no value is present for ErrorCode, not even an explicit nil
### GetErrorMessage

`func (o *PostOrders200Response) GetErrorMessage() string`

GetErrorMessage returns the ErrorMessage field if non-nil, zero value otherwise.

### GetErrorMessageOk

`func (o *PostOrders200Response) GetErrorMessageOk() (*string, bool)`

GetErrorMessageOk returns a tuple with the ErrorMessage field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetErrorMessage

`func (o *PostOrders200Response) SetErrorMessage(v string)`

SetErrorMessage sets ErrorMessage field to given value.


### SetErrorMessageNil

`func (o *PostOrders200Response) SetErrorMessageNil(b bool)`

 SetErrorMessageNil sets the value for ErrorMessage to be an explicit nil

### UnsetErrorMessage
`func (o *PostOrders200Response) UnsetErrorMessage()`

UnsetErrorMessage ensures that no value is present for ErrorMessage, not even an explicit nil
### GetOrderItems

`func (o *PostOrders200Response) GetOrderItems() []PostOrders200ResponseOrderItemsInner`

GetOrderItems returns the OrderItems field if non-nil, zero value otherwise.

### GetOrderItemsOk

`func (o *PostOrders200Response) GetOrderItemsOk() (*[]PostOrders200ResponseOrderItemsInner, bool)`

GetOrderItemsOk returns a tuple with the OrderItems field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrderItems

`func (o *PostOrders200Response) SetOrderItems(v []PostOrders200ResponseOrderItemsInner)`

SetOrderItems sets OrderItems field to given value.


### GetSession

`func (o *PostOrders200Response) GetSession() PostOrders200ResponseSession`

GetSession returns the Session field if non-nil, zero value otherwise.

### GetSessionOk

`func (o *PostOrders200Response) GetSessionOk() (*PostOrders200ResponseSession, bool)`

GetSessionOk returns a tuple with the Session field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSession

`func (o *PostOrders200Response) SetSession(v PostOrders200ResponseSession)`

SetSession sets Session field to given value.

### HasSession

`func (o *PostOrders200Response) HasSession() bool`

HasSession returns a boolean if a field has been set.

### SetSessionNil

`func (o *PostOrders200Response) SetSessionNil(b bool)`

 SetSessionNil sets the value for Session to be an explicit nil

### UnsetSession
`func (o *PostOrders200Response) UnsetSession()`

UnsetSession ensures that no value is present for Session, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


