@echo off
setlocal

set APP_NAME=dawg.exe

set INSTALL_DIR=%LOCALAPPDATA%\dawg

set INSTALLING_REPO=https://github.com/Arya-1-HR/Run-Dawg/raw/main/bin/dawg.exe

echo [*] Installing %APP_NAME% from %INSTALLING_REPO% ...

if not exist "%INSTALL_DIR%" mkdir "%INSTALL_DIR%"

curl -L %INSTALLING_REPO% -o "%INSTALL_DIR%\%APP_NAME%"

setx PATH "%INSTALL_DIR%;%PATH%"

echo [*] Installation complete!
echo [*] Open a new terminal and run "dawg" to start.

endlocal
pause
