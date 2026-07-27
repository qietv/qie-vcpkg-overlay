@setlocal

@echo off

git submodule update --init --recursive --force
if %ERRORLEVEL% NEQ 0 exit /B %ERRORLEVEL%

@endlocal