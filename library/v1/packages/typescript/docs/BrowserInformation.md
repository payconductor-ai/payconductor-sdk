# BrowserInformation

Client browser information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ip** | **string** | Client IP address | [optional] [default to undefined]
**userAgent** | **string** | Browser user agent | [optional] [default to undefined]
**acceptHeader** | **string** | Browser Accept header | [optional] [default to undefined]
**language** | **string** | Browser language | [optional] [default to undefined]
**colorDepth** | **number** | Screen color depth | [optional] [default to undefined]
**screenHeight** | **number** | Screen height in pixels | [optional] [default to undefined]
**screenWidth** | **number** | Screen width in pixels | [optional] [default to undefined]
**timeZoneOffset** | **string** | Time zone offset | [optional] [default to undefined]
**javaEnabled** | **boolean** | Indicates whether Java is enabled | [default to undefined]
**javaScriptEnabled** | **boolean** | Indicates whether JavaScript is enabled | [default to undefined]

## Example

```typescript
import { BrowserInformation } from '@payconductor/sdk';

const instance: BrowserInformation = {
    ip,
    userAgent,
    acceptHeader,
    language,
    colorDepth,
    screenHeight,
    screenWidth,
    timeZoneOffset,
    javaEnabled,
    javaScriptEnabled,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
