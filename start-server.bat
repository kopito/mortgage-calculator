@echo off
echo Starting Mortgage Calculator Server...
echo.
echo Access from your phone at: http://YOUR_IP:8000
echo To find your IP, run: ipconfig
echo.
echo Press Ctrl+C to stop the server
echo.
python -m http.server 8000
if errorlevel 1 (
    echo Python not found. Trying Node.js...
    npx http-server . -p 8000
)
