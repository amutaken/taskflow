@echo off
echo.
echo ========================================
echo      TASKFLOW - TEAM TASK MANAGER
echo ========================================
echo.
echo [1] Starting JSON Server (port 3000)...
start "" cmd /c "npx json-server --watch db.json --port 3000"
timeout /t 2 >nul
echo [2] Starting Live Server (port 5500)...
start "" cmd /c "npx live-server --port=5500"
timeout /t 3 >nul
echo [3] Opening in browser...
start http://localhost:5500
echo.
echo SUCCESS! TaskFlow is LIVE!
echo   - JSON Server: http://localhost:3000
echo   - App: http://localhost:5500
echo.
echo Close this window to stop both servers.
pause >nul
taskkill /im node.exe /f >nul 2>&1