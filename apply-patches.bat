@setlocal

@echo off

pushd "%~dp0vcpkg"
git am --ignore-whitespace "%~dp0Patches\MileWindowsUniCrtVcpkgIntegration.patch"
if %ERRORLEVEL% NEQ 0 exit /B %ERRORLEVEL%
popd

@endlocal