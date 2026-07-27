@setlocal

@echo off

call "%~dp0apply-patches.cmd"
if %ERRORLEVEL% NEQ 0 exit /B %ERRORLEVEL%
call "%~dp0vcpkg-install-package.cmd" qiemedia:arm64-windows-unicrt qiemedia:x64-windows-unicrt qiemedia:x86-windows-unicrt
if %ERRORLEVEL% NEQ 0 exit /B %ERRORLEVEL%

@endlocal