# ⚠️ This Library has been deprecated in favour of the [VonageClientLibrary](https://github.com/Vonage/vonage-ios-client-library) ⚠️ 

# VonageClientSDKSilentAuth

Vonage Verify Silent Authentication uses a mobile phone's Subscriber Identity Module (SIM) to prove a user's identity, without any user input. This SDK enables making a HTTP request over cellular even when on WiFi.

## Installation

### Swift Package Manager 

```swift
import PackageDescription

let package = Package(
    dependencies: [
        .Package(url: "https://github.com/Vonage/verify-silent-auth-sdk-ios.git")
    ]
)
```

### Cocoapods

```ruby
pod 'VonageClientSDKSilentAuth'
```

## Compatibility

iOS 12+

## Usage

```swift
import VonageClientSDKSilentAuth

let client = VGSilentAuthClient()

client.openWithDataCellular(url: url, debug: true) { response in
    if (response["error"]) != nil {
      // Handle error
    } else {
      let status = resp["http_status"] as! Int
      if (status == 200) {
          // Handle response
      } else {
        // Handle error
      }
    }
}
```

### Responses

* Success

When the data connectivity has been achieved and a response has been received from the url endpoint
```
{
"http_status": string, // HTTP status related to the url
"response_body" : { // optional depending on the HTTP status
           ... // the response body of the opened url
          },
"debug" : {
    "device_info": string, 
    "url_trace" : string
    }
}
```

* Error 

When data connectivity is not available and/or an internal SDK error occurred

```
{
"error" : string,
"error_description": string,
"debug" : {
    "device_info": string, 
    "url_trace" : string
    }
}
```
Potential error codes: `sdk_no_data_connectivity`, `sdk_connection_error`, `sdk_redirect_error`, `sdk_error`.
