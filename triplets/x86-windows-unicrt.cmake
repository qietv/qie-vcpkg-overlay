## 
## PROJECT:    qie-vcpkg-overlay
## FILE:       x86-windows-unicrt.cmake
## PURPOSE:    The vcpkg overlay triplet for Mile.Windows.UniCrt x86 target
## 
## LICENSE:    The MIT License
## 
## MAINTAINER: MouriNaruto (Kenji.Mouri@outlook.com)
## 

set(VCPKG_TARGET_ARCHITECTURE x86)
set(VCPKG_CRT_LINKAGE static)
set(VCPKG_LIBRARY_LINKAGE dynamic)
set(ENV{MILE_WINDOWS_UNICRT_HOME} "${CMAKE_CURRENT_LIST_DIR}/../Mile.Windows.UniCrt")
set(VCPKG_ENV_PASSTHROUGH MILE_WINDOWS_UNICRT_HOME)
