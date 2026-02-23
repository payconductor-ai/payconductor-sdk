# CustomerListPagination

Pagination information for customer list

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currentPage** | **number** | Current page number | [default to undefined]
**pageSize** | **number** | Number of items per page | [default to undefined]
**totalItems** | **number** | Total number of customers | [default to undefined]
**totalPages** | **number** | Total number of pages | [default to undefined]

## Example

```typescript
import { CustomerListPagination } from '@payconductor/sdk';

const instance: CustomerListPagination = {
    currentPage,
    pageSize,
    totalItems,
    totalPages,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
