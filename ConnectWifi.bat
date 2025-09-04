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

:: auto-elevate to Administrator
NET FILE 1>NUL 2>NUL
if %errorlevel% NEQ 0 (
    echo [INFO] Requesting Administrator privileges...
    powershell -Command "Start-Process '%~f0' -Verb runAs"
    exit /b
)

echo [INFO] Running as Administrator
echo [INFO] Importing WiFi profile...

:: import Wi-Fi profile
netsh wlan add profile filename="%~dp0WifiProfile.xml" user=all
if %errorlevel% == 0 (
    echo [SUCCESS] WiFi profile imported successfully
) else (
    echo [ERROR] Failed to import WiFi profile
    pause
    exit /b 1
)

echo [INFO] Connecting to WiFi...
:: connect
netsh wlan connect name="YourSSID"
if %errorlevel% == 0 (
    echo [SUCCESS] Connected to WiFi successfully!
) else (
    echo [ERROR] Failed to connect to WiFi
    echo [INFO] Make sure you edited WifiProfile.xml with correct SSID and password
)

echo.
echo [INFO] Press any key to exit...
pause
