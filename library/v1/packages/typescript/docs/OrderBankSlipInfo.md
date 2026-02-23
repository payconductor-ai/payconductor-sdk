# OrderBankSlipInfo

Bank slip payment data

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**barCode** | **string** | Bank slip bar code | [default to undefined]
**digitableLine** | **string** | Bank slip digitable line | [default to undefined]
**pdfUrl** | **string** | Bank slip PDF URL | [optional] [default to undefined]

## Example

```typescript
import { OrderBankSlipInfo } from '@payconductor/sdk';

const instance: OrderBankSlipInfo = {
    barCode,
    digitableLine,
    pdfUrl,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
