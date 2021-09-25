# Changelog

## v3.9 (2021.09.24)
- Merged android-11.0.0_r43 - Septemer security patch

## v3.8 (2021.08.06)
- Merged android-11.0.0_r40 - August security patch

## v3.4 (2021.07.08)
- Merged android-11.0.0_r39 - July security patch

## v3.3.1-rc2 (2021.06.09)
- Merged android-11.0.0_r38 - June security patch

## v3.3.1 (2021.05.04)
- Merged android-11.0.0_r37 - May security patch
- Fixed OTA Updater

## v3.3 (2021.04.27)
- Merged android-11.0.0_r35 - April security patch
- Fixed random wake up to lock screen 
- Fixed screen recorder on legacy devices
- Fixed navbar on landscape mode
- Fixed a bug in USAP pool refill logic
- Disabled Smart Pixel pref on non supported devices
- Added QTI BT and SBC for supported devices
- Added ability to add/remove QS tile with one click
- Added cutout force full-screen option
- Added Sfuny lock screen clock 
- Added OSS style clear all button 
- Switched navbar home drawable with OOS
- Dropped additions to battery saver tile
- Moved brightness slider to the bottom 
- Redesigned settings search bar layout 
- Moved blur toggle to display options
- Fixed QS tile background contrast
- Opensourced our fresh set of app icons and settings dashboard icons :)
- Added new collection of wallpapers
- Use O3 for JNI
- Improved touch width of volume panel 
- Skip screen-on animation in all scenarios
- Disabled advanced reboot by default

## v3.1.2 (2021.01.07)
- Merged android-11.0.0_r27 - January security patch
- Update prebuilts from redfin-user 11 RQ1A.210105.003 7005429 release-keys
- Updated custom Camera package to 1.11.346735625
- Updated apn configs for various carriers 
- Added per-app cellular data, vpn and wifi restrictions 
- Added Flipendo extreme battery saver
- Added network meter indicator 
- Added option to center notification headers 
- Kill Ambient music components 
- Improvements to aggressive battery feature
- Improvements to PixelProps 
- Improvements to DeskClock
- Fixed permissions for various Gapps
- Fixed Wellbeing & Google icons not being overlayed (Only applicable to official releases)
- Killed maintainer info from flash script


## v3.1 (2020.12.08)
- Merged android-11.0.0_r20 - December security patch
- Update prebuilts from redfin-user 11 RQ1A.201205.010 6953398 release-keys 
- Fixed navbar layout tunning 
- Updated navbar animations from pixel 
- Fixup exposing aux camera
- Updated support for third party NFC extension 
- Introduce PixelProps
- Fixed screenshot not showing in power menu
- Remove restrictions for system audio record 
- Added A/B perf mode for Updater
- Move battery icon back to QS panel
- Added option to configure qs header image
- Added option to switch back to pre P mobile data icon style
- Fixed missing icons from ThemePicker
- Added some additional fonts 
- Added lock screen quick unlock option
- Added back fastbootd with checks for supported device
- Added backuptool support for system addons
- Fixed Settings search bar theming 
- Hide media player top divider
- Added hacks to pass safetynet test by default
- Make the battery saver tile useful 
- Fixed margin and padding for lockscreen bottom shortcuts
- Fixed status bar VoLTE tuner switch 
- Introduced new collection of wallpapers for Android 11
- Updated bootanimation Android 11
- Added support for SmartBuild enabled device trees 
- Added tons patches to handle system exception during crashes

## v3.0 Beta 3 (2020.11.19)
- Improved scrolling cache
- Fixed inactive state wifi icon in the kai icon pack
- Remove black bg from the power menu
- Improvements to FOD
- Included some additional shapes (Ya! We haven't added them just added as build target)
- Added QuickAccessWallet plugin (Adds cards in power menu)
- Updated some drawable
- Removed flashlight option from global actions
- Added Pixel offline charging animation
- Added dark mode support for AOSP apps
- Added SmartPixels & SmartPixel QS Tile
- Added Aggressive battery mode
- Added PixelLauncher as default launcher
- Added status bar battery indicator customization
- Added status bar clock & date customization
- Added signature spoofing support
- Added SystemUI restart option under advanced reboot
- Added pocket mode feature
- Added SystemUI restart option under advanced reboot
- Added adaptive playback feature
- Added configuration to specify vendor platform signatures
- Added custom camera package
- Added GalleryGo, Retro Music player, and Via Browser as prebuilt
- Added selection of text in the recent apps menu
- Added Xiaomi Orange accent
- Remove background tint from emergency tile
- Relax location background permission
- Added delete action chip intent
- Bump blur to 175x (Glass blur)
- Switched to new soong config for Android 11

## v3.0 Beta 2.5 (2020.11.03)
- Merged android-11.0.0_r17 - November security patch
- Added option to configure brightness slider position
- Added option to move volume panel to left
- Added option to hide/show QS automatic brightness slider icon
- Added fingerprint authentication vibration controls
- Added option to turn on/off flashlight using a long press on the power button
- Implemented Smart Space (Cool stuff on the AOD)
- Added double tap to wake on AOD
- Added Ambient display tile
- Fixed inactive Wifi Icon in Circular & Filled Icon Pack
- Protect sensitive info on About device

## v3.0 Beta 2 (2020.10.23)
- Merged android-11.0.0_r8 - Pixel 4a(5G), Pixel 5
- Added unlinked ringtone and notification volume
- Added Bluetooth battery level meter on the status bar
- Added support enforcing a minimum delay between notification sounds of an app
- Added Always-on display QS Tile
- Added CesiumOS Line wallpaper collection
- Added option to enable/disable QS Panel icon tint
- Updated boot animations for Android R Beta builds
- Added new set of accent colors
- Added three-fingers-swipe to screenshot
- Enabled SystemUI Tuner
- Added option to configure lock screen shortcuts
- Added navbar layout inversion tuning
- Port brightness slider changes (Automatic brightness icon and stuff)
- Added Caffeine QS Tile
- Added heads up QS Tile
- Added NFC QS Tile
- Added Sync QS Tile
- Added DataSwitch Tile
- Added option to configure QS column count
- Updated webview providers from R
- Integrate Radioactive Tweaks into Settings
- Added option for incall vibrations
- Added 2-button navigation bar overlay (Some people still prefer two buttons)
- Added battery light customization
- Configured to show current and new version on APK installation
- Relax AVC level requirement (Fixes screen recorder on many devices)
- Added back lock screen clock faces
- Implemented burn-in protection for AMOLED/OLED whatever
- Added support for exposing aux camera to apps
- Added avatar to the Settings search bar
- Added option to allow hiding notification headers
- Added option to show 4G instead of LTE
- Added Volume key music control
- Added extended volume panel :D
- Added option to customize the length of gesture navbar (Also, you can hide it xD)
- Added option for enabling Lockscreen Media Art
- Added advanced reboot and power menu customizations
- Tons of performance enhancements and bug fixes!


## v3.0 Beta 1 (2020.10.05)
- Initial CesiumOS Android 11's release

## v2.9 (2020.10.05)
- Bump security patch string to 2020-10-05
- Removed fragments of AppLock
- Improvements to fingerprint unlock speeds
- Updated ringtones/alarm from QQ3A.200705.002
- Fixed navbar layout switching
- Merged generic source related fixes and upstream

## v2.7.2 (2020.09.09)
- Merge android-10.0.0_r46 - September security patch
- Fixed disable settings dashboard suggestions option
- Removed some unwanted header images (Ya! Don't worry anime ones are still under the hood)

## v2.7.1 (2020.08.30)
- Removed redundant {hide notch, reset battery stats} code
- Added option to configure custom header image height
- Added support for MiSoundFX
- Fixed size of icon of vibrate ringer mode
- Improvements to stability and bug fixes
- Added more custom anime header's

## v2.7 (2020.08.04)
- Merge android-10.0.0_r41 - August security patch
- Added QS custom header image
- Fixed default apps not being set for AOSP apps
- Updated Via Browser to v4.0.4
- Fixed a minor workaround for battery dashboard crashing
- Removed lockscreen battery {current, temp} into (It was returning a invalid value)
- Fixed padding of VoLTE icon
- Added icon shapes from Android R Beta's
- Removed python 3.7 not allowed warning from runtime
- Removed 'v' character from Updater's date string
- Fixed changelog script permission issue

## v2.6.2 (2020.07.07)
- Merge android-10.0.0_r40 - July security patch
- Fixed some generic bugs
- Added QS Powershare tile
- Added hide notch
- Added option to configure QS rows and columns
- Added option to reset battery stats
- Added option to allow customizing the length of the navigation handle
- Updated prebuilt apps
- [TMP] Deprecate AppLock (We may bring a proper app lock in future)

## v2.6.1 (2020.06.11)
- Added support for signing builds
- Removed PixelExperience screen recoder
- Removed lock screen font customization
- Fixed charging current value on the lock screen
- Added support for ZenParts
- Added Assist stuffs back after R38 merge
- Build MatchMakerPrebuilt for every arm64
- Rework on priv-app permissions
- Redirect Easter egg URL's to GitHub & telegram pages
- Rework on About us page located in Radioactive Tweaks
- Added support for Russian translation in Radioactive Tweaks

## v2.6 (2020.06.04)
- Merge android-10.0.0_r39 - June security patch
- Fixed sRGB wallpaper crash
- Switched to AOSP apps
- Intoduced brand new icons for AOSP apps
- Switched to MD2 icons for some stuff
- Improvements for Sync Tile
- Added panel for Mobile data, Bluetooth, WiFi, and NFC
- Added Data switch tile
- Added OSS Style status bar icons with two rows as default
- Implement Aggressive battery and Smart Pixels 
- Added Samsung like lock screen clock! -
- Added support for internal audio recording 
- Added calling recording support
- Added extended screenshot (Long screenshot)
- Added Via browser
- Added some google dependencies needed for some stuff oof like Soundpicker
- Added Gallery Go
- Optimize IncallUI delay for voice calls 
- Added flashlight icon to the status bar
- Improve Enhanced Estimates Google Impl
- Added FaceUnlock 
- Materialized Toast 
- Added lockscreen charging animation
- Added Cellular tile icon from OOS
- Added Dirac FX support
- Added R notification style as optional 
- Added Adaptive Playback 
- Added switch for linked ring and media notification volumes 
- Move IMEI information to Sim status 
- Added SELinux info
- Added ADB over network support and it's QS tile
- Added refresh rate settings 
- Implemented webview support 
- Speed optimized 😆 
- Improved animations 
- Added lot's of cool lockscreen clocks 
- Added PocketMode support
- Added support for restrict apps from using WiFi or Mobile Data, VPNs
- Added Cloudflare DNS as default DNS
- Added signature spoofing support 
- Added button to AppErrorDialog to upload crash information to dogbin
- Redesigned Volume panel 
- Added support UnifiedNlp (microG) 
- Reworked on Brightness slider, it's moved to the bottom now ;) 
- Refreshed dashboard icons with new colors ;) 
- Configuration center is now Radioactive Tweaks 
- Added all of our wallpapers into your very own WallBucket ;)
- Redesigned battery meter
- Redesigned OTA Updater 

## v2.5.2 (2020.03.10)
- Merge android-10.0.0_r31 - March security patch
- Some generic source related fixes

## v2.5.1 (2020.02.26)
- Added fresh new VoLTE icon
- Fixed missing in call vibration option
- Added support for incremental & block based OTA support
- Added essential build system related patches

## v2.5 (2020.02.16)
- Added Battery meter for Bluetooth devices
- Smoother Upload and Download Animation
- Added In call vibrations
- Addded option to allow enabling/disabling lock screen media art
- Added Network traffic meter
- Added optional MIUI like brightness slider & volume panel
- Added Always on Display tile
- Added three-finger swipe screenshot
- Fixes for the OTA package exporting
- Added brand new accents
- Added option to hide notch cutout
- Added volume key music control
- Added some customizations for QS pannel
- Added some stuff inspired by OxygenOS
- Added missing VoLTE icon
- Added DT2S & DT2W
- Removed the annoying message, "Android system is corrupted"
- Added Navigation bar customizations!
- Source Improvements and Bug fixes
- New ambient mode feature - Edge lighting
- Improved battery prediction from Turbo 
- Added brand new boot animation for the latest and greatest release!
- Added customizations for charging led
- Updated animations from Pixel 4XL
- Switched to Pixel 4XL offline charging animation
- Updated a few prebuilt apps to latest
- Source Improvements and Bug fixes
- Improved translations

## v2.4 (2020.02.04)
- Merge android-10.0.0_r27 - February security patch

## v2.35 (2020.01.08)
- Merge android-10.0.0_r25 - January security patch
- Added Gapps
- Redesigned OTA Updater (Based on PixelExperience's design)
- Added Retro Music Player
- Added Persistent settings icon on QS
- Added built-in app lock support
- Lot's of bug fixes & performance improvements

## v2.3 (2019.12.13)
- Merge android-10.0.0_r18 - December security patch
- Added lockscreen Type clock face

## v2.0 (2019.11.18)
- Initial CesiumOS Android 10's release

## v1.1 (2019.08.31)
- Merge android-9.0.0_r46 - August security patch
- Added Gapps
- Added support for Dark, Black and Light themes
- Added built-in accent picker
- Added OnePlus red accent color
- Added Livedisplay v2.0 support
- Added Lawnchair v2 as default launcher
- Added extended volume panel (Inspired by Oreo)
- Added MIUI's long screenshot implementation
- Added support for internal audio recording
- Added option for invert nav bar layout
- Redesigned Battery Meter
- Added support for built in AppLocker
- Added three finger swipe to screenshot gesture
- Added support for DT2W & DT2S
- Added Network Traffic Meter
- Updated Ambient Play service to v1.5

## v1.0 (2019.01.19)
- Initial CesiumOS Android 9's release
