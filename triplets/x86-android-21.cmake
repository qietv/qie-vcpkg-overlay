## 
## PROJECT:    qie-vcpkg-overlay
## FILE:       x86-android-21.cmake
## PURPOSE:    The vcpkg overlay triplet for Android API Level 21 x86 target
## 
## LICENSE:    The MIT License
## 
## MAINTAINER: MouriNaruto (Kenji.Mouri@outlook.com)
## 

set(VCPKG_TARGET_ARCHITECTURE x86)
set(VCPKG_CRT_LINKAGE dynamic)
set(VCPKG_LIBRARY_LINKAGE dynamic)
set(VCPKG_CMAKE_SYSTEM_NAME Android)
set(VCPKG_CMAKE_SYSTEM_VERSION 21)
set(VCPKG_MAKE_BUILD_TRIPLET "--host=i686-linux-android")
set(VCPKG_CMAKE_CONFIGURE_OPTIONS -DANDROID_ABI=x86)
