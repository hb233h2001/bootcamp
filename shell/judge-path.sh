#!/bin/bash

# ファイルパスの入力をリクエスト
echo "ファイルパスを入力してください:"
read FILE_PATH

# 入力されたファイル経路が相対か絶対かを判別
if [[ "$FILE_PATH" == /* || "$FILE_PATH" == ~* ]]; then  # TRYOUTはMac OS ユーザ想定なので、ウインドウのC:のような場合は排除しました。
  echo "絶対パスです: $FILE_PATH"
else
  echo "相対パスです: $FILE_PATH"
fi