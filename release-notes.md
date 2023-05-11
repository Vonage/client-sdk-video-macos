# OpenTok macOS SDK release notes

## New features and changes

### Version 2.25.0 -- April 2023

* This is the first stable release of OpenTok macOS SDK.  It was previously a beta SDK.

* This version of the SDK uses an updated version of WebRTC 99, which includes improvements in performance and stability.

* Added support for default audio capturer.  You can apply the `setDefaultAudioDeviceClass` method.

* This version fixes an issue where the capturer sometimes failed. 

### Version 2.24.1 -- February 2023

* This version fixes an issue where the camera LED was not turned off when the video was muted. 

* This version fixes an issue where audio would remain muted for users under certain circumstances.

* This version fixes an issue where starting a session with muted video would disable scalable video. 

* This version fixes an issue where video resolution was not being maintained.

### Version 2.24.0 -- December 2022

This is the first public release of the OpenTok macOS SDK.

## Known issues

The following are known issues:

* If a system proxy is configured, the SDK will not use it.

* The H.264 codec is not supported. See the [video codecs](https://tokbox.com/developer/guides/codecs/)
  developer guide.

* In some cases, Bluetooth is not being routed.  We are looking into the issue.
