#!/bin/bash

# for ループと条件文を混合してコードを作成。
# 現在の日付をコンピュータから受け取り、今日の曜日を表すファイルを作成し、bashに表示するコードを作成。

# 現在の日付を出力
current_date=$(date +%Y-%m-%d)
echo "今日の日付は: $current_date"

# 現在の曜日を数字で読み込む (1: 月曜日, 2: 火曜日, ..., 7: 日曜日)
day_of_week=$(date +%u)

# 요일 배열 설정
days=("月曜日" "火曜日" "水曜日" "木曜日" "金曜日" "土曜日" "日曜日")

# for ループを使用してメッセージ設定とファイルに保存
for i in {1..7}
do
  if [ $day_of_week -eq $i ]; then
    message="今日は ${days[$((i-1))]}です。"
    echo $message > day_message.txt
    break
  fi
done

# テキストファイルの内容出力
cat day_message.txt
