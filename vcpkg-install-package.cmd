@setlocal

@echo off

rem qie-vcpkg-overlay

if not defined QIE_VCPKG_OUTPUT (
    set QIE_VCPKG_OUTPUT=%~dp0Output
)

set VCPKG_DEFAULT_BINARY_CACHE=%QIE_VCPKG_OUTPUT%\cache
set VCPKG_DOWNLOADS=%QIE_VCPKG_OUTPUT%\downloads
set VCPKG_OVERLAY_PORTS=%~dp0ports
set VCPKG_OVERLAY_TRIPLETS=%~dp0triplets

mkdir %VCPKG_DEFAULT_BINARY_CACHE%

"%~dp0vcpkg\vcpkg.exe" ^
    "--x-buildtrees-root=%QIE_VCPKG_OUTPUT%\buildtrees" ^
    "--x-packages-root=%QIE_VCPKG_OUTPUT%\packages" ^
    "--x-install-root=%QIE_VCPKG_OUTPUT%\installed" ^
    install ^
    %*

@endlocal
