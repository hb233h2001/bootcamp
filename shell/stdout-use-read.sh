#!/bin/bash

# ユーザーからテキストを入力を受ける
echo "Enter some text:"
read text
# 入力されたテキストをtest-stdout.txtファイルに保存
echo "$text" > test-stdout.txt
# 結果メッセージ出力
echo "Text saved to test-stdout.txt"