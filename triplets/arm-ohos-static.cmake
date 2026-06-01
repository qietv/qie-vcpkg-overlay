## 
## PROJECT:    qie-vcpkg-overlay
## FILE:       arm-android-21-static.cmake
## PURPOSE:    The vcpkg overlay triplet for OpenHarmony ARM target
## 
## LICENSE:    The MIT License
## 
## MAINTAINER: MouriNaruto (Kenji.Mouri@outlook.com)
## 

set(VCPKG_ENV_PASSTHROUGH_UNTRACKED OHOS_SDK_ROOT)
set(VCPKG_TARGET_ARCHITECTURE arm)
set(VCPKG_CRT_LINKAGE dynamic)
set(VCPKG_LIBRARY_LINKAGE static)
set(VCPKG_CMAKE_SYSTEM_NAME Linux)
set(VCPKG_MAKE_BUILD_TRIPLET "--host=armv7-unknown-linux-ohos")
set(VCPKG_CMAKE_CONFIGURE_OPTIONS -DOHOS_ARCH=armeabi-v7a -DCMAKE_PLATFORM_NO_VERSIONED_SONAME=ON)
set(VCPKG_ENV_PASSTHROUGH OHOS_SDK_ROOT)
set(VCPKG_CHAINLOAD_TOOLCHAIN_FILE "${CMAKE_CURRENT_LIST_DIR}/toolchains/ohos-native-sdk.cmake")
