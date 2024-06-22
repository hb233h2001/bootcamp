#!/bin/bash

# 1. コマンドライン引数で複数の整数を渡す
if [ $# -lt 1 ]; then
  echo "数字の入力をお願いします。"
  exit 1
fi

# 2. カレントディレクトリに""out""ディレクトリを作成する
OUT_DIR="out"
mkdir $OUT_DIR

# 3. 渡された引数の回数分だけ""out""ディレクトリ以下にディレクトリを生成する
for NUM_DIRS in "$@"; do
  for ((i = 1; i <= NUM_DIRS; i++)); do
    DIR_NAME="${OUT_DIR}/dir${i}"
    mkdir -p $DIR_NAME
    
    # 4. 生成されたディレクトリに順序分（インデックス分）の数のファイルを生成する
    for ((j = 1; j <= i; j++)); do
      touch "${DIR_NAME}/file${j}.txt"
    done
  done
done

# 完了メッセージを出力
echo "ディレクトリとファイルの作成が完了しました。"
