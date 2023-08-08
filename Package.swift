// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "VonageClientSDKSilentAuth",
    platforms: [.iOS(.v12), .macOS(.v10_15)],
    products: [
        .library(
            name: "VonageClientSDKSilentAuth",
            targets: ["VonageClientSDKSilentAuth"]),
    ],
    dependencies: [
        .package(url: "https://github.com/silentauth/silentauth-sdk-ios.git",.exact("1.0.5"))
    ],
    targets: [
        .target(
            name: "VonageClientSDKSilentAuth",
            dependencies: [
                .product(name: "SilentAuthSDK", package: "silentauth-sdk-ios")
            ]
        )
    ]
)
