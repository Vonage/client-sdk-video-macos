# OpenTok macOS SDK

Apps written with the OpenTok macOS SDK 2.25.0 can interoperate with OpenTok apps
written with version 2.23+ of the OpenTok client SDKs:

* OpenTok.js
* OpenTok Android SDK
* OpenTok iOS SDK
* OpenTok Windows SDK
* OpenTok Linux SDK

The OpenTok macOS SDK is a C library.

## System requirements

The OpenTok macOS SDK is supported on macOS 10.12 or higher;
on both Intel (x86_64) and Apple silicon (arm64) Macs.

### Swift Package Manager

You can add the OpenTok MacOS SDK by adding the https://github.com/opentok/vonage-client-sdk-video-macos.git repository as a Swift Package Dependency.
To add a package dependency to your Xcode project, select *File* > *Swift Packages* > *Add Package Dependency* and enter its repository URL.

### Cocoapods

The OpenTok macOS SDK is also available as the Pod "VonageClientSDKVideoMacOS", for use with
[CocoaPods](http://cocoapods.org/).

## Using the SDK

The OpenTok.xcframework directory contains the OpenTok macOS SDK.

The OpenTok macOS SDK requires Xcode 11 or higher.

The OpenTok macOS SDK requires the following frameworks and libraries:

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
