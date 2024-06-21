#!/bin/bash

# 入力する数字を受け取る。 繰り返し実行。Ctrl+Dで入力終了。
echo "Enter some numbers (press Ctrl+D to finish):"

# ループスタート
while read num; do

    #ループ結果出力
    echo "You entered: $num"
done

# 終了メッセージ出力
echo "Finished reading numbers."