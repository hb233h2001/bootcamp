#!/bin/bash

#  shell script / arguments

#  シェルでは、スクリプトの実行時に追加のデータを渡すことができる。 これらのデータをパラメータと呼ぶ。
#  パラメータは、スクリプトの実行時にスペースで区切って入力できる。

#  基本的な使い方

#  1. スクリプト実行時にパラメータを渡す: $ ./my_script.sh arg1 arg2 arg3 - arg1,arg2,arg3がパラメータ。
#  2. スクリプト内でパラメータを使用する: 
#     echo "First argument: $1"
#     echo "Second argument: $2"
#     echo "Third argument: $3"
#     $1, $2, $3はそれぞれ1番目、2番目、3番目のパラメータを表示. 

#  3. すべてのパラメータを使用する:
#     echo "All arguments: $@" - $@: すべてのパラメータを示す。
#     echo "Number of arguments: $#" - $#: 伝達されたパラメータの個数を示す。
#  4. オプションの処理: 
#     while getopts ":a:b:c" opt; do
#         case $opt in
#             a) echo "Option -a with value $OPTARG" ;;
#             b) echo "Option -b with value $OPTARG" ;;
#             c) echo "Option -c found" ;;
#             \?) echo "Invalid option: -$OPTARG" ;;
#         esac
#     done
#     -a, -b, -c オプションを処理。 OPTARGにはオプションに該当する値が保存。

# すべてのパラメータ出力
echo "All arguments: $*"

# パラメータ数出力
echo "Number of arguments: $#"

# 各パラメータ出力
for i in "$@"; do 
    echo "Argument: $i"
done

# bashでスクリプト実行
# ./script.sh apple banana orange

# 結果.
# All arguments: apple banana orange
# Number of arguments: 3
# Argument: apple
# Argument: banana
# Argument: orange