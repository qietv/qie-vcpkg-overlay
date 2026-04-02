## 
## PROJECT:    qie-vcpkg-overlay
## FILE:       arm64-windows-unicrt.cmake
## PURPOSE:    The vcpkg overlay triplet for Mile.Windows.UniCrt ARM64 target
## 
## LICENSE:    The MIT License
## 
## MAINTAINER: MouriNaruto (Kenji.Mouri@outlook.com)
## 

set(VCPKG_TARGET_ARCHITECTURE arm64)
set(VCPKG_CRT_LINKAGE static)
set(VCPKG_LIBRARY_LINKAGE dynamic)
set(VCPKG_ENV_PASSTHROUGH MILE_WINDOWS_UNICRT_HOME)
