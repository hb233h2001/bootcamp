#!/bin/bash

# 親プロセスにおける環境変数の設定
export PARENT_VAR="Hello from parent"
export FOOD="RAMEN"

# 子プロセス実行
./child_script.sh
./child_script2.sh