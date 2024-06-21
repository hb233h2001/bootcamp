#!/bin/bash

# 削除するファイル名を取得する
echo "Enter some file names (press Ctrl+D to finish):"

# 入力されたファイルを削除
echo "$(cat)" | xargs rm -f

# 結果メッセージ出力
echo "The files have been deleted."