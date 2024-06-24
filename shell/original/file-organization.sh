#!/bin/bash

# 使い方（usage）を表示させる
usage() {
  echo "使い方: $0 <MMDD> [Directory to organize]"
  echo "例: $0 0622 /path/to/directory"
  exit 1
}

# コマンドラインパラメータが渡されなかった場合
if [ "$#" -ne 1 ] || [ "$#" -gt 2 ]; then
  usage
fi

# 入力された日付 (MMDD)
DATE=$1

# 日付形式チェック (MMDD)
if ! [[ "$DATE" =~ ^[0-1][0-9][0-3][0-9]$ ]]; then
  echo "エラー: 無効な日付形式です。MMDD形式で入力してください。"
  usage
fi

# 整理するディレクトリ(デフォルト:現在のディレクトリ)
TARGET_DIR=${2:-.}

# ディレクトリの有効性チェック
if [ ! -d "$TARGET_DIR" ]; then
  echo "エラー: 無効なディレクトリです。"
  usage
fi

# 現在の年度と入力された日付を組み合わせてYYYYMMDD形式の日付を作成
CURRENT_YEAR=$(date +%Y)
TARGET_DATE="${CURRENT_YEAR}${DATE}"

# 日付有効性チェック (例: 20240622)
if ! date -d "$TARGET_DATE" &>/dev/null; then
  echo "エラー: 無効な日付です。"
  usage
fi

# "使用済みファイル"ディレクトリの作成
USED_DIR="$TARGET_DIR/already been used"
mkdir -p "$USED_DIR"

# ファイル移動
find "$TARGET_DIR" -maxdepth 1 -type f ! -path "./${USED_DIR}/*" -not -newermt "$TARGET_DATE +1 day" -exec mv {} "$USED_DIR" \;

echo "ファイルが'$USED_DIR'フォルダーに移動されました。"
