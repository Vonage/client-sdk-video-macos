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
                      url: "https://s3.amazonaws.com/artifact.tokbox.com/rel/macos-sdk/vonage-macos-sdk-2.26.0.zip",
                      checksum: "a63b67009f332c57b8fa00dbb0657264f1f2eba48e7885e6ea93c749ab243378"),
        .target(name: "VonageClientSDKVideoMacOS",
                path: "Sources",
                linkerSettings: [
                    .linkedFramework("Network"),
                    .linkedFramework("VideoToolbox"),
                    .linkedLibrary("c++")
                ]),
        .testTarget(name: "VonageClientSDKVideoMacOSTests",
                    dependencies: ["VonageClientSDKVideoMacOS"])
    ]
)
