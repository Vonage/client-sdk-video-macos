// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription


let package = Package(
    name: "VonageClientSDKVideoMacOS",
    platforms: [.iOS(.v12)],
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
                      url: "https://s3.us-east-1.amazonaws.com/artifact.tokbox.com/rel/macos-sdk/vonage-macos-sdk-2.29.0.zip",
                      checksum: "8d1765b395633db375e14c5020ac89b47f8c1135357e9687f3f9dddb7da08631"),
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
