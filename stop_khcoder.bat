@echo off
echo Stopping KH Coder...
wsl.exe bash -c "cd ~/khcoder && docker compose down"
taskkill /F /IM vcxsrv.exe >nul 2>&1
echo Done.
timeout /t 2 >nul