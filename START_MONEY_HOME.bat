@echo off
cd /d "%~dp0"
title My Little Money Home Launcher
echo Starting My Little Money Home locally...
start "My Little Money Home Server" cmd /k "cd /d ""%~dp0"" && python -m http.server 8000"
timeout /t 1 /nobreak >nul
start "" http://localhost:8000
exit
