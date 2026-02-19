# CustomerAddress

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**City** | **string** | City name | 
**Country** | **string** | Country code in ISO 3166-1 alpha-2 format | [default to "BR"]
**Neighborhood** | **string** | Neighborhood name | 
**Number** | **string** | Address number | 
**State** | **string** | State code in ISO 3166-2 format | 
**Street** | **string** | Street name | 
**ZipCode** | **string** | ZIP code without formatting | 

## Methods

### NewCustomerAddress

`func NewCustomerAddress(city string, country string, neighborhood string, number string, state string, street string, zipCode string, ) *CustomerAddress`

NewCustomerAddress instantiates a new CustomerAddress object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCustomerAddressWithDefaults

`func NewCustomerAddressWithDefaults() *CustomerAddress`

NewCustomerAddressWithDefaults instantiates a new CustomerAddress object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetCity

`func (o *CustomerAddress) GetCity() string`

GetCity returns the City field if non-nil, zero value otherwise.

### GetCityOk

`func (o *CustomerAddress) GetCityOk() (*string, bool)`

GetCityOk returns a tuple with the City field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCity

`func (o *CustomerAddress) SetCity(v string)`

SetCity sets City field to given value.


### GetCountry

`func (o *CustomerAddress) GetCountry() string`

GetCountry returns the Country field if non-nil, zero value otherwise.

### GetCountryOk

`func (o *CustomerAddress) GetCountryOk() (*string, bool)`

GetCountryOk returns a tuple with the Country field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCountry

`func (o *CustomerAddress) SetCountry(v string)`

SetCountry sets Country field to given value.


### GetNeighborhood

`func (o *CustomerAddress) GetNeighborhood() string`

GetNeighborhood returns the Neighborhood field if non-nil, zero value otherwise.

### GetNeighborhoodOk

`func (o *CustomerAddress) GetNeighborhoodOk() (*string, bool)`

GetNeighborhoodOk returns a tuple with the Neighborhood field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNeighborhood

`func (o *CustomerAddress) SetNeighborhood(v string)`

SetNeighborhood sets Neighborhood field to given value.


### GetNumber

`func (o *CustomerAddress) GetNumber() string`

GetNumber returns the Number field if non-nil, zero value otherwise.

### GetNumberOk

`func (o *CustomerAddress) GetNumberOk() (*string, bool)`

GetNumberOk returns a tuple with the Number field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumber

`func (o *CustomerAddress) SetNumber(v string)`

SetNumber sets Number field to given value.


### GetState

`func (o *CustomerAddress) GetState() string`

GetState returns the State field if non-nil, zero value otherwise.

### GetStateOk

`func (o *CustomerAddress) GetStateOk() (*string, bool)`

GetStateOk returns a tuple with the State field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetState

`func (o *CustomerAddress) SetState(v string)`

SetState sets State field to given value.


### GetStreet

`func (o *CustomerAddress) GetStreet() string`

GetStreet returns the Street field if non-nil, zero value otherwise.

### GetStreetOk

`func (o *CustomerAddress) GetStreetOk() (*string, bool)`

GetStreetOk returns a tuple with the Street field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStreet

`func (o *CustomerAddress) SetStreet(v string)`

SetStreet sets Street field to given value.


### GetZipCode

`func (o *CustomerAddress) GetZipCode() string`

GetZipCode returns the ZipCode field if non-nil, zero value otherwise.

### GetZipCodeOk

`func (o *CustomerAddress) GetZipCodeOk() (*string, bool)`

GetZipCodeOk returns a tuple with the ZipCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetZipCode

`func (o *CustomerAddress) SetZipCode(v string)`

SetZipCode sets ZipCode field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


