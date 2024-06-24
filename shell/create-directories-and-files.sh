#!/bin/bash

if [ $# -lt 1 ]; then
  echo "数字の入力をお願いします。"
  exit 1
fi

OUT_DIR="out"
mkdir $OUT_DIR

for NUM_DIRS in "$@"; do
  for ((i = 1; i <= NUM_DIRS; i++)); do
    DIR_NAME="${OUT_DIR}/dir${i}"
    mkdir -p $DIR_NAME
    
    for ((j = 1; j <= i; j++)); do
      touch "${DIR_NAME}/file${j}.txt"
    done
  done
done

echo "ディレクトリとファイルの作成が完了しました。"
