@echo off
:: ==========================================
:: WiFi Connection Script
:: ==========================================
:: 
:: INSTRUCTIONS:
:: 1. Edit WifiProfile.xml file:
::    - Change "YourSSID" to your WiFi network name
::    - Change "YourPassword" to your WiFi password
:: 2. Run this script as Administrator
:: 3. The script will automatically connect to your WiFi
::
:: ==========================================

:: auto-elevate
NET FILE 1>NUL 2>NUL
if %errorlevel% NEQ 0 (
    powershell -Command "Start-Process '%~f0' -Verb runAs"
    exit /b
)

:: import Wi-Fi profile
netsh wlan add profile filename="%~dp0WiFiProfile.xml" user=all

:: connect
netsh wlan connect name="YourSSID" || echo error

pause
