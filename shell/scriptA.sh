#!/bin/bash
# scriptA.sh

echo "This is script A."
# scriptB.shを呼び出す。
./scriptB.sh

echo 
echo "こんにちは。今日はいかがお過ごしでしょうか?"
read input

if [ -z $input ]; then
    echo "申し訳ございません。"
else
    ./scriptC.sh
fi