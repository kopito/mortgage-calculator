# Mortgage Amortization Calculator

A beautiful, modern mortgage calculator that compares repayment paths with and without an offset account.

## Features

- 📊 Interactive Chart.js visualization
- 💰 Offset account calculations
- 📱 Progressive Web App (PWA) - Install on Android!
- 🎨 Modern dark theme UI
- 📈 Real-time interest savings comparison
- ⚡ Works offline

## Quick Start

### For Desktop/Web
Simply open `index.html` in your browser - that's it!

### For Android Phone (PWA - Recommended)

1. **Generate Icons:**
   - Open `generate-icons.html` in your browser
   - Click both buttons to download the icon files
   - Place `icon-192.png` and `icon-512.png` in this folder

2. **Start a Local Server:**
   ```bash
   # Option 1: Python
   python -m http.server 8000
   
   # Option 2: Node.js
   npx http-server . -p 8000
   ```

3. **Access from Phone:**
   - Find your computer's IP: `ipconfig` (Windows) or `ifconfig` (Mac/Linux)
   - On your phone browser, go to: `http://YOUR_IP:8000`
   - Tap menu → "Add to Home screen" or "Install app"

4. **Done!** The app will appear on your home screen like a native app.

### For Native Android APK

See `ANDROID_SETUP.md` for detailed instructions on building an APK with Capacitor.

## Usage

1. Enter your loan details:
   - Loan Amount
   - Annual Interest Rate (%)
   - Mortgage Term (Years)
   - Offset Account Balance

2. Click "Calculate" to see the visualization

3. Toggle "Compare with & without offset" to show/hide the comparison

4. View the summary table for total interest paid and time saved

## Files

- `index.html` - Main application
- `manifest.json` - PWA manifest
- `sw.js` - Service worker for offline support
- `generate-icons.html` - Icon generator tool
- `ANDROID_SETUP.md` - Detailed Android setup guide

## Technologies

- Vanilla JavaScript
- Chart.js for visualizations
- Progressive Web App (PWA)
- Capacitor (for native Android build)

## License

MIT
