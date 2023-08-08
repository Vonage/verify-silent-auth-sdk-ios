Pod::Spec.new do |spec|
    spec.name         = "VonageClientSDKSilentAuth"
    spec.version      = "1.0.1"
    spec.summary      = "SDK for Vonage Verify Silent Authentication"
    spec.description  = <<-DESC
    Vonage Verify Silent Authentication uses a mobile phone's Subscriber Identity Module (SIM) to prove a user's identity, without any user input. This SDK enables making a HTTP request over cellular even when on WiFi.
    DESC
    spec.homepage     = "https://github.com/Vonage/verify-silent-auth-sdk-ios"
    spec.license      = { :type => "MIT", :file => "LICENSE" }
    spec.author             = { "author" => "devrel@vonage.com" }
    spec.documentation_url = "https://developer.vonage.com/en/verify/verify-v2/overview"
    spec.platforms = { :ios => "12.0" }
    spec.swift_version = "5.3"
    spec.source       = { :git => "https://github.com/Vonage/verify-silent-auth-sdk-ios.git", :tag => "#{spec.version}" }
    spec.source_files  = "Sources/VonageClientSDKSilentAuth/**/*.swift"
    spec.xcconfig = { "SWIFT_VERSION" => "5.3" }
    spec.dependency 'silentauth-sdk-ios', '1.0.5'
end
