# KH Coder on Docker with VcXsrv (Windows 11 / WSL2)

Windows 11 の WSLg によるメニュー座標ズレを回避し、VcXsrv (Display :0) 経由で KH Coder を安定起動する Docker 環境です。

## 必要環境
- Windows 11
- WSL2 (Ubuntu)
- Docker Desktop (WSL2 バックエンド有効)
- VcXsrv Windows X Server (`winget install marha.VcXsrv`)

## 起動方法
1. デスクトップまたは本フォルダ内の `run_khcoder.bat` をダブルクリックします。
   - VcXsrv (Display :0, アクセス制御無効) が自動起動します。
   - Docker コンテナが立ち上がり、KH Coder のメイン画面が表示されます。

## 終了方法
1. `stop_khcoder.bat` を実行すると、コンテナと VcXsrv プロセスがクリーンに停止します。
