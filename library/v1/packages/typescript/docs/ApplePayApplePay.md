# ApplePayApplePay

Apple Pay token data from the device

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**version** | **string** | Token version. The only accepted value is EC_v1 | [default to undefined]
**data** | **string** | Encrypted payment data from Apple Pay token | [default to undefined]
**signature** | **string** | Signature of the payment and header data | [default to undefined]
**header** | [**ApplePayApplePayHeader**](ApplePayApplePayHeader.md) |  | [default to undefined]

## Example

```typescript
import { ApplePayApplePay } from '@payconductor/sdk';

const instance: ApplePayApplePay = {
    version,
    data,
    signature,
    header,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
