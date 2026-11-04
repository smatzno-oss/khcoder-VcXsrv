# KH Coder 3 Docker for macOS (Apple Silicon / Intel)

KH Coder 3 を macOS（Docker）環境で安定して動作させるための実行環境・修正パッチ一式です。

## 主な修正・拡張内容

1. **MeCab による名詞句・複合語抽出の修正**:
   - `menu.pm` および `mysql_nounphrases.pm` をパッチ修正し、MeCab 環境下で「TermExtractを利用（複合語抽出）」がエラーなく正常に動作するように改善。
2. **ダイアログ表示・文字化け修正**:
   - 前処理実行時の `missing: run_prep_dialog` 未定義キーエラーおよび、Tk/Perl 間での UTF-8 文字化けを `Encode::decode_utf8` による適切なエンコード処理で解消。
3. **データ読み込みの最適化**:
   - Excel 読み込みの環境依存エラーを回避し、UTF-8 CSV からのテキスト列自動認識および外部変数の安定読み込みに対応。
4. **起動スクリプトの集約**:
   - XQuartz の設定やコンテナ起動を一括で行う `khcoder.sh` を整備。

---

## 必要要件

- macOS（Apple Silicon / Intel 双方対応）
- [Docker Desktop](https://www.docker.com/products/docker-desktop/)
- [XQuartz](https://www.xquartz.org/)（GUI 表示用）

---

## 初期セットアップ

### 1. XQuartz の設定
1. XQuartz を起動し、「設定」→「セキュリティ」を開きます。
2. **「ネットワーク・クライアントからの接続を許可」にチェック** を入れます。
3. XQuartz を一度完全に終了（Cmd + Q）して再起動します。

### 2. リポジトリのクローン（サブモジュール含む）
```bash
git clone --recursive [https://github.com/smatzno-oss/NL2E.git](https://github.com/smatzno-oss/NL2E.git)
cd NL2E