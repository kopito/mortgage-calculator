# Android App Setup Guide

This guide will help you convert the Mortgage Calculator into an Android app that runs on your phone.

## Option 1: Progressive Web App (PWA) - Easiest! ⭐

### Step 1: Generate Icons
1. Open `generate-icons.html` in your browser
2. Click both buttons to download `icon-192.png` and `icon-512.png`
3. Place both files in the project root folder

### Step 2: Host the App Locally
You need to serve the app over HTTPS (required for PWA installation):

**Option A: Using Python**
```bash
# Install Python if needed, then:
python -m http.server 8000
```

**Option B: Using Node.js**
```bash
npx http-server . -p 8000
```

**Option C: Using VS Code Live Server**
- Install "Live Server" extension
- Right-click `index.html` → "Open with Live Server"

### Step 3: Access from Your Phone
1. Find your computer's IP address:
   - Windows: `ipconfig` (look for IPv4 Address)
   - Example: `192.168.1.100`
2. On your phone, open browser and go to: `http://YOUR_IP:8000`
3. You should see the calculator

### Step 4: Install as App
1. In Chrome/Edge on Android, tap the menu (3 dots)
2. Select "Add to Home screen" or "Install app"
3. The app will appear on your home screen like a native app!

**Note:** For HTTPS, you can use:
- `ngrok` for a secure tunnel: `npx ngrok http 8000`
- Or deploy to GitHub Pages, Netlify, or Vercel (free)

---

## Option 2: Build Native APK with Capacitor

This creates a real Android APK file you can install directly.

### Prerequisites
- Node.js installed
- Android Studio installed
- Java JDK 11 or higher

### Step 1: Install Dependencies
```bash
npm install
```

### Step 2: Initialize Capacitor
```bash
npx cap init
# When prompted:
# - App name: Mortgage Calculator
# - App ID: com.mortgagecalc.app
# - Web dir: . (current directory)
```

### Step 3: Add Android Platform
```bash
npx cap add android
```

### Step 4: Generate Icons (if not done)
Open `generate-icons.html` and download both icon files.

### Step 5: Sync Files
```bash
npx cap sync android
```

### Step 6: Open in Android Studio
```bash
npx cap open android
```

### Step 7: Build APK in Android Studio
1. In Android Studio, go to: **Build → Build Bundle(s) / APK(s) → Build APK(s)**
2. Wait for build to complete
3. Click "locate" when done
4. APK will be in: `android/app/build/outputs/apk/debug/app-debug.apk`

### Step 8: Install on Your Phone
1. Transfer `app-debug.apk` to your phone (USB, email, cloud storage)
2. On your phone, enable "Install from Unknown Sources" in Settings
3. Open the APK file and install

---

## Option 3: Quick Test - Direct File Transfer

For testing on your phone only:

1. Copy all files to your phone (via USB, email, or cloud)
2. Open `index.html` in Chrome/Edge browser on Android
3. It will work, but PWA features need HTTPS

---

## Troubleshooting

### PWA Installation Not Showing
- Make sure you're accessing via HTTPS or localhost
- Check that `manifest.json` and `sw.js` are accessible
- Verify icons exist (`icon-192.png`, `icon-512.png`)

### Capacitor Build Fails
- Make sure Android Studio is fully installed
- Check Java version: `java -version` (should be 11+)
- Try: `npx cap doctor` to check setup

### Icons Not Generating
- Make sure browser allows downloads
- Check browser console for errors
- Manually create 192x192 and 512x512 PNG files with a dollar sign icon

---

## Recommended: Start with PWA (Option 1)

The PWA approach is easiest and works great! You can always build an APK later if needed.
