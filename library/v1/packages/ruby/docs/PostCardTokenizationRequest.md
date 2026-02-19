# OpenapiClient::PostCardTokenizationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card** | [**CompleteCardData**](CompleteCardData.md) |  |  |
| **save_card** | **Boolean** | Indicates if the card should be saved for future use |  |
| **customer** | [**PostCardTokenizationRequestCustomer**](PostCardTokenizationRequestCustomer.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PostCardTokenizationRequest.new(
  card: null,
  save_card: null,
  customer: null
)
```

