# PostOrders200ResponseOrderItemsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExternalId** | **NullableString** | ID externo do item | 
**Id** | **string** | ID do item no pedido | 
**Name** | **string** | Nome do produto/serviço | 
**Qty** | **float32** | Quantidade | 
**TotalAmount** | **float32** | Valor total do item (quantidade × preço unitário) | 
**TotalNetAmount** | **float32** | Valor líquido total do item | 
**UnityPrice** | **float32** | Preço unitário | 

## Methods

### NewPostOrders200ResponseOrderItemsInner

`func NewPostOrders200ResponseOrderItemsInner(externalId NullableString, id string, name string, qty float32, totalAmount float32, totalNetAmount float32, unityPrice float32, ) *PostOrders200ResponseOrderItemsInner`

NewPostOrders200ResponseOrderItemsInner instantiates a new PostOrders200ResponseOrderItemsInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPostOrders200ResponseOrderItemsInnerWithDefaults

`func NewPostOrders200ResponseOrderItemsInnerWithDefaults() *PostOrders200ResponseOrderItemsInner`

NewPostOrders200ResponseOrderItemsInnerWithDefaults instantiates a new PostOrders200ResponseOrderItemsInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetExternalId

`func (o *PostOrders200ResponseOrderItemsInner) GetExternalId() string`

GetExternalId returns the ExternalId field if non-nil, zero value otherwise.

### GetExternalIdOk

`func (o *PostOrders200ResponseOrderItemsInner) GetExternalIdOk() (*string, bool)`

GetExternalIdOk returns a tuple with the ExternalId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExternalId

`func (o *PostOrders200ResponseOrderItemsInner) SetExternalId(v string)`

SetExternalId sets ExternalId field to given value.


### SetExternalIdNil

`func (o *PostOrders200ResponseOrderItemsInner) SetExternalIdNil(b bool)`

 SetExternalIdNil sets the value for ExternalId to be an explicit nil

### UnsetExternalId
`func (o *PostOrders200ResponseOrderItemsInner) UnsetExternalId()`

UnsetExternalId ensures that no value is present for ExternalId, not even an explicit nil
### GetId

`func (o *PostOrders200ResponseOrderItemsInner) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *PostOrders200ResponseOrderItemsInner) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *PostOrders200ResponseOrderItemsInner) SetId(v string)`

SetId sets Id field to given value.


### GetName

`func (o *PostOrders200ResponseOrderItemsInner) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *PostOrders200ResponseOrderItemsInner) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *PostOrders200ResponseOrderItemsInner) SetName(v string)`

SetName sets Name field to given value.


### GetQty

`func (o *PostOrders200ResponseOrderItemsInner) GetQty() float32`

GetQty returns the Qty field if non-nil, zero value otherwise.

### GetQtyOk

`func (o *PostOrders200ResponseOrderItemsInner) GetQtyOk() (*float32, bool)`

GetQtyOk returns a tuple with the Qty field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQty

`func (o *PostOrders200ResponseOrderItemsInner) SetQty(v float32)`

SetQty sets Qty field to given value.


### GetTotalAmount

`func (o *PostOrders200ResponseOrderItemsInner) GetTotalAmount() float32`

GetTotalAmount returns the TotalAmount field if non-nil, zero value otherwise.

### GetTotalAmountOk

`func (o *PostOrders200ResponseOrderItemsInner) GetTotalAmountOk() (*float32, bool)`

GetTotalAmountOk returns a tuple with the TotalAmount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalAmount

`func (o *PostOrders200ResponseOrderItemsInner) SetTotalAmount(v float32)`

SetTotalAmount sets TotalAmount field to given value.


### GetTotalNetAmount

`func (o *PostOrders200ResponseOrderItemsInner) GetTotalNetAmount() float32`

GetTotalNetAmount returns the TotalNetAmount field if non-nil, zero value otherwise.

### GetTotalNetAmountOk

`func (o *PostOrders200ResponseOrderItemsInner) GetTotalNetAmountOk() (*float32, bool)`

GetTotalNetAmountOk returns a tuple with the TotalNetAmount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalNetAmount

`func (o *PostOrders200ResponseOrderItemsInner) SetTotalNetAmount(v float32)`

SetTotalNetAmount sets TotalNetAmount field to given value.


### GetUnityPrice

`func (o *PostOrders200ResponseOrderItemsInner) GetUnityPrice() float32`

GetUnityPrice returns the UnityPrice field if non-nil, zero value otherwise.

### GetUnityPriceOk

`func (o *PostOrders200ResponseOrderItemsInner) GetUnityPriceOk() (*float32, bool)`

GetUnityPriceOk returns a tuple with the UnityPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnityPrice

`func (o *PostOrders200ResponseOrderItemsInner) SetUnityPrice(v float32)`

SetUnityPrice sets UnityPrice field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


