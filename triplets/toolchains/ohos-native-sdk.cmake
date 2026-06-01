## 
## PROJECT:    qie-vcpkg-overlay
## FILE:       ohos-native-sdk.cmake
## PURPOSE:    The OpenHarmony Native SDK CMake toolchain redirection script
## 
## LICENSE:    The MIT License
## 
## MAINTAINER: MouriNaruto (Kenji.Mouri@outlook.com)
## 

if (VCPKG_TARGET_ARCHITECTURE STREQUAL "arm64")
    set(OHOS_ARCH "arm64-v8a" CACHE STRING "")
elseif (VCPKG_TARGET_ARCHITECTURE STREQUAL "arm")
    set(OHOS_ARCH "armeabi-v7a" CACHE STRING "")
elseif (VCPKG_TARGET_ARCHITECTURE STREQUAL "x64")
    set(OHOS_ARCH "x86_64" CACHE STRING "")
else ()
    message(FATAL_ERROR "Unsupported architecture for OpenHarmony Native SDK: ${VCPKG_TARGET_ARCHITECTURE}")
endif()

if (DEFINED ENV{OHOS_SDK_ROOT})
    set(OHOS_SDK_ROOT $ENV{OHOS_SDK_ROOT})
else ()
    if(DEFINED ENV{DEVECO_SDK_HOME})
        set(OHOS_SDK_ROOT "$ENV{DEVECO_SDK_HOME}/default/openharmony")
    else ()
        set(OHOS_SDK_ROOT "$ENV{ProgramFiles}/Huawei/DevEco Studio/sdk/default/openharmony")
    endif ()
endif()

if (NOT EXISTS "${OHOS_SDK_ROOT}/native/build/cmake/ohos.toolchain.cmake")
    message(FATAL_ERROR
    "Could not find the OpenHarmony Native SDK."
    "Set the OHOS_SDK_ROOT environment variable to the root of the OpenHarmony SDK"
    "(e.g. ~/.local/opt/ohos/command-line-tools/sdk/default/openharmony)."
    "Current value: ${OHOS_SDK_ROOT}")
endif()

include("${OHOS_SDK_ROOT}/native/build/cmake/ohos.toolchain.cmake")
