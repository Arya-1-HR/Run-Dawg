@echo off
setlocal

:: App name
set APP_NAME=dawg.exe

:: Install directory (you can change this if you want)
set INSTALL_DIR=%ProgramFiles%\dawg

:: Download URL (raw GitHub link to your Windows build)
set INSTALLING_REPO=https://github.com/Arya-1-HR/Run-Dawg/raw/main/bin/dawg.exe

echo [*] Installing %APP_NAME% from %INSTALLING_REPO% ...

:: Create install dir if not exists
if not exist "%INSTALL_DIR%" mkdir "%INSTALL_DIR%"

:: Download binary using curl (Windows 10+ has curl preinstalled)
curl -L %INSTALLING_REPO% -o "%INSTALL_DIR%\%APP_NAME%"

:: Add to PATH (system-wide)
setx PATH "%PATH%;%INSTALL_DIR%" /M

echo [*] Installation complete!
echo [*] Open a new terminal and run "dawg" to start.

endlocal
pause
