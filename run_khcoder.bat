@echo off
echo ==============================================
echo Starting KH Coder with VcXsrv (Display :0)
echo ==============================================

:: 1. 既存の古い VcXsrv プロセスを停止（ポート6000解放）
taskkill /F /IM vcxsrv.exe >nul 2>&1
timeout /t 1 /nobreak >nul

:: 2. VcXsrv を Display :0 で起動
start "" "C:\Program Files\VcXsrv\vcxsrv.exe" :0 -multiwindow -clipboard -wgl -ac
timeout /t 2 /nobreak >nul

:: 3. WSL 内でホストIPを取得し、DISPLAY=:0 を渡して Docker Compose を起動
wsl.exe bash -c "export DISPLAY=\$(ip route | awk '/default/ {print \$3}'):0 && cd ~/khcoder && docker compose up -d"

echo KH Coder has been launched.
timeout /t 3 >nul