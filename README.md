# WiFi Connection Script

A simple Windows batch script that helps you connect to WiFi networks. Perfect for use across multiple Windows laptops via USB drive.

## Features

- 🔧 **Simple and clean script** (only 18 lines of code!)
- 📝 **SSID variable for easy configuration**
- 🔐 **Auto-elevates to Administrator privileges**
- 📡 **Automatically imports WiFi profile**
- 🌐 **Connects to WiFi network**
- 💻 **Works on all Windows versions**
- 🚀 **Perfect for USB distribution**

## Quick Start

1. **Edit ConnectWifi.bat** - Change the SSID on line 17
2. **Edit WifiProfile.xml** - Update SSID and password
3. **Run ConnectWifi.bat** - Double-click to connect!

## Step-by-Step Instructions

### Step 1: Edit ConnectWifi.bat
1. Open `ConnectWifi.bat` in any text editor (Notepad, etc.)
2. Find line 17: `set SSID=YourSSID`
3. Change "YourSSID" to your WiFi network name
4. Save the file

### Step 2: Edit WifiProfile.xml
1. Open `WifiProfile.xml` in any text editor (Notepad, etc.)
2. Find "YourSSID" and replace it with your WiFi network name
   - This appears TWICE in the file - change both!
3. Find "YourPassword" and replace it with your WiFi password
4. Save the file

### Step 3: Run the Script
1. Double-click `ConnectWifi.bat`
2. The script will automatically request Administrator privileges
3. The script will import the WiFi profile and connect
4. Press any key to exit when done

## Example

If your WiFi name is "MyHomeWiFi" and password is "mypassword123":

**In ConnectWifi.bat:**
```batch
set SSID=MyHomeWiFi
```

**In WifiProfile.xml:**
- Change "YourSSID" to "MyHomeWiFi" (both places)
- Change "YourPassword" to "mypassword123"

## Using on Multiple Laptops

1. Copy both files (`ConnectWifi.bat` and `WifiProfile.xml`) to USB drive
2. On each laptop:
   - Edit `ConnectWifi.bat` with the SSID
   - Edit `WifiProfile.xml` with WiFi details
   - Double-click `ConnectWifi.bat`
   - Done!

## Troubleshooting

**Problem:** "Failed to import WiFi profile"  
**Solution:** Make sure `WifiProfile.xml` is in the same folder as `ConnectWifi.bat`

**Problem:** "error" message appears  
**Solution:** 
- Check that SSID name is exactly correct (case-sensitive)
- Check that password is correct
- Make sure WiFi is enabled on your computer

**Problem:** Script won't run  
**Solution:** The script should auto-elevate, but if it doesn't work, right-click `ConnectWifi.bat` and select "Run as administrator"

## Files

- `ConnectWifi.bat` - Main WiFi connection script
- `WifiProfile.xml` - WiFi profile template
- `README.txt` - Detailed instructions

## Requirements

- Windows 7 or later
- WiFi adapter enabled
- Administrator privileges (script auto-elevates)

## License

This project is open source and available under the [MIT License](LICENSE).

---

⭐ **Star this repository if you find it helpful!**
