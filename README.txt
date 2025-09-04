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

STEP 1: Edit WifiProfile.xml
----------------------------
1. Open WifiProfile.xml in any text editor (Notepad, etc.)
2. Find "YourSSID" and replace it with your WiFi network name
   - This appears TWICE in the file - change both!
3. Find "YourPassword" and replace it with your WiFi password
4. Save the file

EXAMPLE:
If your WiFi name is "MyHomeWiFi" and password is "mypassword123":
- Change "YourSSID" to "MyHomeWiFi" (both places)
- Change "YourPassword" to "mypassword123"

STEP 2: Run the Script
----------------------
1. Double-click ConnectWifi.bat
2. The script will automatically request Administrator privileges
3. The script will import the WiFi profile and connect
4. Press any key to exit when done

==========================================
FOR OPEN NETWORKS (No Password):
==========================================

If your WiFi has no password, edit WifiProfile.xml:
1. Change <authentication>WPA2PSK</authentication> to <authentication>open</authentication>
2. Change <encryption>AES</encryption> to <encryption>none</encryption>
3. Remove these lines completely:
   <sharedKey>
     <keyType>passPhrase</keyType>
     <protected>false</protected>
     <keyMaterial>YourPassword</keyMaterial>
   </sharedKey>

==========================================
TROUBLESHOOTING:
==========================================

Problem: "Failed to import WiFi profile"
Solution: Make sure WifiProfile.xml is in the same folder as ConnectWifi.bat

Problem: "error" message appears
Solution: 
- Check that SSID name is exactly correct (case-sensitive)
- Check that password is correct
- Make sure WiFi is enabled on your computer

Problem: Script won't run
Solution: The script should auto-elevate, but if it doesn't work, right-click ConnectWifi.bat and select "Run as administrator"

==========================================
USING ON MULTIPLE LAPTOPS:
==========================================

1. Copy both files (ConnectWifi.bat and WifiProfile.xml) to USB drive
2. On each laptop:
   - Edit WifiProfile.xml with that laptop's WiFi details
   - Double-click ConnectWifi.bat
   - Done!

==========================================
FEATURES:
==========================================

- Simple and clean script (only 16 lines of code!)
- Auto-elevates to Administrator privileges
- Automatically imports WiFi profile
- Connects to WiFi network
- Works on all Windows versions
- Perfect for USB distribution

==========================================
