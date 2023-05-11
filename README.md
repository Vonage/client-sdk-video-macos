# Vonage Client SDK Video MacOS

Apps written with the Vonage Client SDK Video MacOS 2.25.0 can interoperate with Vonage apps
written with version 2.23+ of the Vonage client SDKs:

* Vonage.js
* Vonage Android SDK
* Vonage iOS SDK
* Vonage Windows SDK
* Vonage Linux SDK

The Vonage Client SDK Video MacOS is a C library.

## System requirements

The Vonage Client SDK Video MacOS is supported on macOS 10.12 or higher;
on both Intel (x86_64) and Apple silicon (arm64) Macs.

### Swift Package Manager

You can add the Vonage Client SDK Video MacOS by adding the https://github.com/vonage/vonage-client-sdk-video-macos.git repository as a Swift Package Dependency.
To add a package dependency to your Xcode project, select *File* > *Swift Packages* > *Add Package Dependency* and enter its repository URL.

### Cocoapods

The Vonage Client SDK Video MacOS is also available as the Pod "VonageClientSDKVideoMacOS", for use with
[CocoaPods](http://cocoapods.org/).

## Using the SDK

The OpenTok.xcframework directory contains the Vonage Client SDK Video MacOS.

The Vonage Client SDK Video MacOS requires Xcode 11 or higher.

The Vonage Client SDK Video MacOS requires the following frameworks and libraries:

* AudioToolbox.framework
* AVFoundation.framework
* CoreAudio.framework
* CoreGraphics.framework
* CoreMedia.framework
* GLKit.framework
* MetalKit.framework
* Network.framework
* VideoToolbox.framework
* libc++.dylib

See the [release notes](release-notes.md) for information on the latest version
of the SDK and for a list of known issues.

## Sample Applications

For sample code, go to the
[opentok-macos-sdk-samples repo](https://github.com/opentok/opentok-macos-sdk-samples)
at GitHub.

## Documentation

Reference documentation is included in the doc subdirectory of the SDK and at
<http://tokbox.com/developer/sdks/mac/reference/>.

## More information

For a list of new features and known issues, see the [release notes](release-notes.md).
