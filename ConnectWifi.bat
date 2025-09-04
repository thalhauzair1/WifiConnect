@echo off
:: ==========================================
:: WiFi Connection Script
:: ==========================================
:: 
:: INSTRUCTIONS:
:: 1. Change the SSID below to your WiFi network name
:: 2. Edit WifiProfile.xml file:
::    - Change "YourSSID" to your WiFi network name (same as above)
::    - Change "YourPassword" to your WiFi password
:: 3. Run this script as Administrator
:: 4. The script will automatically connect to your WiFi
::
:: ==========================================

:: CHANGE THIS TO YOUR WIFI NETWORK NAME
set SSID=YourSSID

:: auto-elevate
NET FILE 1>NUL 2>NUL
if %errorlevel% NEQ 0 (
    powershell -Command "Start-Process '%~f0' -Verb runAs"
    exit /b
)

:: import Wi-Fi profile
netsh wlan add profile filename="%~dp0WiFiProfile.xml" user=all

:: connect
netsh wlan connect name="%SSID%" || echo error

pause
