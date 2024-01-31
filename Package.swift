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
                      url: "https://s3.amazonaws.com/artifact.tokbox.com/rel/macos-sdk/vonage-macos-sdk-2.27.1.zip",
                      checksum: "85e573e369b28b6c6829c8925a2629e62966c8f22c659863a3005f458e9bf026"),
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
