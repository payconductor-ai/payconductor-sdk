# OpenapiClient::CustomerAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **city** | **String** | City name |  |
| **country** | **String** | Country code in ISO 3166-1 alpha-2 format | [default to &#39;BR&#39;] |
| **neighborhood** | **String** | Neighborhood name |  |
| **number** | **String** | Address number |  |
| **state** | **String** | State code in ISO 3166-2 format |  |
| **street** | **String** | Street name |  |
| **zip_code** | **String** | ZIP code without formatting |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CustomerAddress.new(
  city: null,
  country: null,
  neighborhood: null,
  number: null,
  state: null,
  street: null,
  zip_code: null
)
```

