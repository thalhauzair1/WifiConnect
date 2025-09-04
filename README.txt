==========================================
    WiFi Connection Script - Instructions
==========================================

QUICK START:
1. Edit WifiProfile.xml file
2. Run ConnectWifi.bat
3. Done!

==========================================
STEP-BY-STEP INSTRUCTIONS:
==========================================

STEP 1: Edit ConnectWifi.bat
----------------------------
1. Open ConnectWifi.bat in any text editor (Notepad, etc.)
2. Find line 17: set SSID=YourSSID
3. Change "YourSSID" to your WiFi network name
4. Save the file

STEP 2: Edit WifiProfile.xml
----------------------------
1. Open WifiProfile.xml in any text editor (Notepad, etc.)
2. Find "YourSSID" and replace it with your WiFi network name
   - This appears TWICE in the file - change both!
3. Find "YourPassword" and replace it with your WiFi password
4. Save the file

EXAMPLE:
If your WiFi name is "MyHomeWiFi" and password is "mypassword123":
- In ConnectWifi.bat: set SSID=MyHomeWiFi
- In WifiProfile.xml: Change "YourSSID" to "MyHomeWiFi" (both places)
- In WifiProfile.xml: Change "YourPassword" to "mypassword123"

STEP 3: Run the Script
----------------------
1. Double-click ConnectWifi.bat
2. The script will automatically request Administrator privileges
3. The script will import the WiFi profile and connect
4. Press any key to exit when done

==========================================
USING ON MULTIPLE LAPTOPS:
==========================================

1. Copy both files (ConnectWifi.bat and WifiProfile.xml) to USB drive
2. On each laptop:
   - Edit WifiProfile.xml with that laptop's WiFi details
   - Double-click ConnectWifi.bat
   - Done!

