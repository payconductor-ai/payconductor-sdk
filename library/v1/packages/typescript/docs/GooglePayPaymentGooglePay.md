# GooglePayPaymentGooglePay

Specific data for Google Pay payment (ECv2 Token)

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**signature** | **string** | Signature of the Google Pay payment token | [default to undefined]
**intermediateSigningKey** | [**GooglePayPaymentGooglePayIntermediateSigningKey**](GooglePayPaymentGooglePayIntermediateSigningKey.md) |  | [default to undefined]
**protocolVersion** | **string** | Encryption protocol version | [default to undefined]
**signedMessage** | **string** | JSON serialized string by Google Pay containing encryptedMessage, ephemeralPublicKey and tag | [default to undefined]

## Example

```typescript
import { GooglePayPaymentGooglePay } from '@payconductor/sdk';

const instance: GooglePayPaymentGooglePay = {
    signature,
    intermediateSigningKey,
    protocolVersion,
    signedMessage,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
