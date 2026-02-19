# OpenapiClient::PostOrdersRequestPayment

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'openapi_client'

OpenapiClient::PostOrdersRequestPayment.openapi_one_of
# =>
# [
#   :'BankSlip',
#   :'CreditCard',
#   :'Draft',
#   :'NuPay',
#   :'PicPay',
#   :'Pix'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'openapi_client'

OpenapiClient::PostOrdersRequestPayment.openapi_discriminator_name
# => :'payment_method'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'openapi_client'

OpenapiClient::PostOrdersRequestPayment.openapi_discriminator_mapping
# =>
# {
#   :'BankSlip' => :'BankSlip',
#   :'CreditCard' => :'CreditCard',
#   :'Draft' => :'Draft',
#   :'NuPay' => :'NuPay',
#   :'PicPay' => :'PicPay',
#   :'Pix' => :'Pix'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'openapi_client'

OpenapiClient::PostOrdersRequestPayment.build(data)
# => #<BankSlip:0x00007fdd4aab02a0>

OpenapiClient::PostOrdersRequestPayment.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `BankSlip`
- `CreditCard`
- `Draft`
- `NuPay`
- `PicPay`
- `Pix`
- `nil` (if no type matches)

