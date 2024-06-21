#!/bin/bash

# ユーザーから入力する内容を受け取る
echo "Enter some text (press Ctrl+D to finish):"

# 入力内容をoutput.txtファイルに保存
cat > output.txt

# 結果メッセージ出力
echo "The text you entered has been saved to output.txt."