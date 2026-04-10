@setlocal

@echo off

set VCPKG_DEFAULT_BINARY_CACHE=%~dp0Output\cache
set VCPKG_DOWNLOADS=%~dp0Output\downloads
set VCPKG_OVERLAY_PORTS=%~dp0ports
set VCPKG_OVERLAY_TRIPLETS=%~dp0triplets

mkdir %VCPKG_DEFAULT_BINARY_CACHE%

"%~dp0vcpkg\vcpkg.exe" ^
    "--x-buildtrees-root=%~dp0Output\buildtrees" ^
    "--x-packages-root=%~dp0Output\packages" ^
    "--x-install-root=%~dp0Output\installed" ^
    install ^
    %*

@endlocal
