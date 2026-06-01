## 
## PROJECT:    qie-vcpkg-overlay
## FILE:       x64-android-21.cmake
## PURPOSE:    The vcpkg overlay triplet for OpenHarmony x64 target
## 
## LICENSE:    The MIT License
## 
## MAINTAINER: MouriNaruto (Kenji.Mouri@outlook.com)
## 

set(VCPKG_ENV_PASSTHROUGH_UNTRACKED OHOS_SDK_ROOT)
set(VCPKG_TARGET_ARCHITECTURE x64)
set(VCPKG_CRT_LINKAGE dynamic)
set(VCPKG_LIBRARY_LINKAGE dynamic)
set(VCPKG_CMAKE_SYSTEM_NAME Linux)
set(VCPKG_MAKE_BUILD_TRIPLET "--host=x86_64-unknown-linux-ohos")
set(VCPKG_CMAKE_CONFIGURE_OPTIONS -DOHOS_ARCH=x86_64 -DCMAKE_PLATFORM_NO_VERSIONED_SONAME=ON)
set(VCPKG_ENV_PASSTHROUGH OHOS_SDK_ROOT)
set(VCPKG_CHAINLOAD_TOOLCHAIN_FILE "${CMAKE_CURRENT_LIST_DIR}/toolchains/ohos-native-sdk.cmake")
