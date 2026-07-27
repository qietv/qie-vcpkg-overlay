@setlocal

@echo off

call "%~dp0reset-submodules.cmd"
if %ERRORLEVEL% NEQ 0 exit /B %ERRORLEVEL%

pushd "%~dp0vcpkg"
git config user.name "github-actions[bot]"
if %ERRORLEVEL% NEQ 0 exit /B %ERRORLEVEL%
git config user.email "41898282+github-actions[bot]@users.noreply.github.com"
if %ERRORLEVEL% NEQ 0 exit /B %ERRORLEVEL%
git am --ignore-whitespace "%~dp0Patches\MileWindowsUniCrtVcpkgIntegration.patch"
if %ERRORLEVEL% NEQ 0 exit /B %ERRORLEVEL%
popd

@endlocal