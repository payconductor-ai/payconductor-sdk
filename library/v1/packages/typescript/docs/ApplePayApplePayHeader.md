# ApplePayApplePayHeader

Additional header information for payment verification

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ephemeralPublicKey** | **string** | X.509 encoded key bytes, Base64 encoded | [default to undefined]
**publicKeyHash** | **string** | Hash of the X.509 encoded public key bytes of the merchant certificate | [default to undefined]
**transactionId** | **string** | Hexadecimal transaction identifier | [default to undefined]

## Example

```typescript
import { ApplePayApplePayHeader } from '@payconductor/sdk';

const instance: ApplePayApplePayHeader = {
    ephemeralPublicKey,
    publicKeyHash,
    transactionId,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
