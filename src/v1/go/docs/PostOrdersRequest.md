# PostOrdersRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ChargeAmount** | **float32** | Valor total a ser cobrado no pedido em valor flutuante | 
**ClientIp** | **string** | Endereço IP do cliente | 
**Customer** | [**Cliente**](Cliente.md) |  | 
**DiscountAmount** | **float32** | Valor do desconto | [default to 0]
**ExternalId** | **string** | ID da ordem no seu sistema | 
**Fingerprints** | Pointer to [**PostOrdersRequestFingerprints**](PostOrdersRequestFingerprints.md) |  | [optional] 
**Items** | Pointer to [**[]PostOrdersRequestItemsInner**](PostOrdersRequestItemsInner.md) | Lista de produtos ou serviços do pedido | [optional] 
**Merchant** | Pointer to [**MerchantInput**](MerchantInput.md) |  | [optional] 
**Payment** | [**PostOrdersRequestPayment**](PostOrdersRequestPayment.md) |  | 
**SplitAmountTotal** | Pointer to **float32** | Valor total do split a ser pago ao merchant (Sendo usado apenas para fins de relatório, ou seja não gera split real) | [optional] 
**Session** | Pointer to [**PostOrdersRequestSession**](PostOrdersRequestSession.md) |  | [optional] 
**ShippingFee** | **float32** | Valor do frete | [default to 0]
**TaxFee** | **float32** | Taxas adicionais | [default to 0]
**Metadata** | Pointer to **map[string]interface{}** | Metadados adicionais para o pedido como pares chave-valor. Não deve ter espaços ou caracteres especiais nas chaves | [optional] 

## Methods

### NewPostOrdersRequest

`func NewPostOrdersRequest(chargeAmount float32, clientIp string, customer Cliente, discountAmount float32, externalId string, payment PostOrdersRequestPayment, shippingFee float32, taxFee float32, ) *PostOrdersRequest`

NewPostOrdersRequest instantiates a new PostOrdersRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPostOrdersRequestWithDefaults

`func NewPostOrdersRequestWithDefaults() *PostOrdersRequest`

NewPostOrdersRequestWithDefaults instantiates a new PostOrdersRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetChargeAmount

`func (o *PostOrdersRequest) GetChargeAmount() float32`

GetChargeAmount returns the ChargeAmount field if non-nil, zero value otherwise.

### GetChargeAmountOk

`func (o *PostOrdersRequest) GetChargeAmountOk() (*float32, bool)`

GetChargeAmountOk returns a tuple with the ChargeAmount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChargeAmount

`func (o *PostOrdersRequest) SetChargeAmount(v float32)`

SetChargeAmount sets ChargeAmount field to given value.


### GetClientIp

`func (o *PostOrdersRequest) GetClientIp() string`

GetClientIp returns the ClientIp field if non-nil, zero value otherwise.

### GetClientIpOk

`func (o *PostOrdersRequest) GetClientIpOk() (*string, bool)`

GetClientIpOk returns a tuple with the ClientIp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientIp

`func (o *PostOrdersRequest) SetClientIp(v string)`

SetClientIp sets ClientIp field to given value.


### GetCustomer

`func (o *PostOrdersRequest) GetCustomer() Cliente`

GetCustomer returns the Customer field if non-nil, zero value otherwise.

### GetCustomerOk

`func (o *PostOrdersRequest) GetCustomerOk() (*Cliente, bool)`

GetCustomerOk returns a tuple with the Customer field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCustomer

`func (o *PostOrdersRequest) SetCustomer(v Cliente)`

SetCustomer sets Customer field to given value.


### GetDiscountAmount

`func (o *PostOrdersRequest) GetDiscountAmount() float32`

GetDiscountAmount returns the DiscountAmount field if non-nil, zero value otherwise.

### GetDiscountAmountOk

`func (o *PostOrdersRequest) GetDiscountAmountOk() (*float32, bool)`

GetDiscountAmountOk returns a tuple with the DiscountAmount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDiscountAmount

`func (o *PostOrdersRequest) SetDiscountAmount(v float32)`

SetDiscountAmount sets DiscountAmount field to given value.


### GetExternalId

`func (o *PostOrdersRequest) GetExternalId() string`

GetExternalId returns the ExternalId field if non-nil, zero value otherwise.

### GetExternalIdOk

`func (o *PostOrdersRequest) GetExternalIdOk() (*string, bool)`

GetExternalIdOk returns a tuple with the ExternalId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExternalId

`func (o *PostOrdersRequest) SetExternalId(v string)`

SetExternalId sets ExternalId field to given value.


### GetFingerprints

`func (o *PostOrdersRequest) GetFingerprints() PostOrdersRequestFingerprints`

GetFingerprints returns the Fingerprints field if non-nil, zero value otherwise.

### GetFingerprintsOk

`func (o *PostOrdersRequest) GetFingerprintsOk() (*PostOrdersRequestFingerprints, bool)`

GetFingerprintsOk returns a tuple with the Fingerprints field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFingerprints

`func (o *PostOrdersRequest) SetFingerprints(v PostOrdersRequestFingerprints)`

SetFingerprints sets Fingerprints field to given value.

### HasFingerprints

`func (o *PostOrdersRequest) HasFingerprints() bool`

HasFingerprints returns a boolean if a field has been set.

### GetItems

`func (o *PostOrdersRequest) GetItems() []PostOrdersRequestItemsInner`

GetItems returns the Items field if non-nil, zero value otherwise.

### GetItemsOk

`func (o *PostOrdersRequest) GetItemsOk() (*[]PostOrdersRequestItemsInner, bool)`

GetItemsOk returns a tuple with the Items field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetItems

`func (o *PostOrdersRequest) SetItems(v []PostOrdersRequestItemsInner)`

SetItems sets Items field to given value.

### HasItems

`func (o *PostOrdersRequest) HasItems() bool`

HasItems returns a boolean if a field has been set.

### GetMerchant

`func (o *PostOrdersRequest) GetMerchant() MerchantInput`

GetMerchant returns the Merchant field if non-nil, zero value otherwise.

### GetMerchantOk

`func (o *PostOrdersRequest) GetMerchantOk() (*MerchantInput, bool)`

GetMerchantOk returns a tuple with the Merchant field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMerchant

`func (o *PostOrdersRequest) SetMerchant(v MerchantInput)`

SetMerchant sets Merchant field to given value.

### HasMerchant

`func (o *PostOrdersRequest) HasMerchant() bool`

HasMerchant returns a boolean if a field has been set.

### GetPayment

`func (o *PostOrdersRequest) GetPayment() PostOrdersRequestPayment`

GetPayment returns the Payment field if non-nil, zero value otherwise.

### GetPaymentOk

`func (o *PostOrdersRequest) GetPaymentOk() (*PostOrdersRequestPayment, bool)`

GetPaymentOk returns a tuple with the Payment field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPayment

`func (o *PostOrdersRequest) SetPayment(v PostOrdersRequestPayment)`

SetPayment sets Payment field to given value.


### GetSplitAmountTotal

`func (o *PostOrdersRequest) GetSplitAmountTotal() float32`

GetSplitAmountTotal returns the SplitAmountTotal field if non-nil, zero value otherwise.

### GetSplitAmountTotalOk

`func (o *PostOrdersRequest) GetSplitAmountTotalOk() (*float32, bool)`

GetSplitAmountTotalOk returns a tuple with the SplitAmountTotal field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSplitAmountTotal

`func (o *PostOrdersRequest) SetSplitAmountTotal(v float32)`

SetSplitAmountTotal sets SplitAmountTotal field to given value.

### HasSplitAmountTotal

`func (o *PostOrdersRequest) HasSplitAmountTotal() bool`

HasSplitAmountTotal returns a boolean if a field has been set.

### GetSession

`func (o *PostOrdersRequest) GetSession() PostOrdersRequestSession`

GetSession returns the Session field if non-nil, zero value otherwise.

### GetSessionOk

`func (o *PostOrdersRequest) GetSessionOk() (*PostOrdersRequestSession, bool)`

GetSessionOk returns a tuple with the Session field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSession

`func (o *PostOrdersRequest) SetSession(v PostOrdersRequestSession)`

SetSession sets Session field to given value.

### HasSession

`func (o *PostOrdersRequest) HasSession() bool`

HasSession returns a boolean if a field has been set.

### GetShippingFee

`func (o *PostOrdersRequest) GetShippingFee() float32`

GetShippingFee returns the ShippingFee field if non-nil, zero value otherwise.

### GetShippingFeeOk

`func (o *PostOrdersRequest) GetShippingFeeOk() (*float32, bool)`

GetShippingFeeOk returns a tuple with the ShippingFee field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetShippingFee

`func (o *PostOrdersRequest) SetShippingFee(v float32)`

SetShippingFee sets ShippingFee field to given value.


### GetTaxFee

`func (o *PostOrdersRequest) GetTaxFee() float32`

GetTaxFee returns the TaxFee field if non-nil, zero value otherwise.

### GetTaxFeeOk

`func (o *PostOrdersRequest) GetTaxFeeOk() (*float32, bool)`

GetTaxFeeOk returns a tuple with the TaxFee field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTaxFee

`func (o *PostOrdersRequest) SetTaxFee(v float32)`

SetTaxFee sets TaxFee field to given value.


### GetMetadata

`func (o *PostOrdersRequest) GetMetadata() map[string]interface{}`

GetMetadata returns the Metadata field if non-nil, zero value otherwise.

### GetMetadataOk

`func (o *PostOrdersRequest) GetMetadataOk() (*map[string]interface{}, bool)`

GetMetadataOk returns a tuple with the Metadata field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMetadata

`func (o *PostOrdersRequest) SetMetadata(v map[string]interface{})`

SetMetadata sets Metadata field to given value.

### HasMetadata

`func (o *PostOrdersRequest) HasMetadata() bool`

HasMetadata returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


