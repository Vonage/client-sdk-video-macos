// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription


let package = Package(
    name: "VonageClientSDKVideoMacOS",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "VonageClientSDKVideoMacOS",
            targets: ["OpenTok", "VonageClientSDKVideoMacOS"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .binaryTarget(name: "OpenTok",
                      url: "https://s3.us-east-1.amazonaws.com/artifact.tokbox.com/rel/macos-sdk/vonage-macos-sdk-2.30.1.zip",
                      checksum: "d69437d4ad107df8f85672fa1f8b6b91a41e1110b31ef9de9c1779b894f5e1f0"),
        .target(name: "VonageClientSDKVideoMacOS",
                path: "Sources",
                resources: [
                    .process("VonageClientSDKVideoMacOS/Resources/selfie_segmentation.tflite"),
                    .copy("VonageClientSDKVideoMacOS/Resources/PrivacyInfo.xcprivacy")
                ],
                linkerSettings: [
                    .linkedFramework("Network"),
                    .linkedFramework("VideoToolbox"),
                    .linkedLibrary("c++")
                ]),
        .testTarget(name: "VonageClientSDKVideoMacOSTests",
                    dependencies: ["VonageClientSDKVideoMacOS"])
    ]
)
