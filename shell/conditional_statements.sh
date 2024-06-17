#!/bin/bash
# shell script / conditional statements

# 特定の条件に従って他のコマンドを実行できるようにする重要な構造。

# 基本的な条件文

# if文
# 最も基本的な条件文

# if [ condition ]; then
#     if body
# fi

number=10

if [ $number -gt 5 ]; then
    echo "number bigger than 5."
fi

#if-else文
# 条件が真でない場合、他のコマンドを実行したいときにelseを使用。

# if [ condition ]; then
#   if body
# else
#   else body
# fi

number=3
if [ $number -gt 5 ]; then
    echo "number bigger than 5."
else
    echo "number is 5 or smaller than 5."
fi

# if-elif-else文
# 複数の条件を検査したいときにelifを使用。

# if [ condition ]; then
#     if body
# elif [ condition ]; then
#   else if body
# else
#   else body
# fi

number=5

if [ $number -gt 10 ]; then
    echo "number bigger than 10."
elif [ $number -eq 5 ]; then
    echo "number is 5."
else
    echo "number is smaller than 5."
fi

# 条件比較

# 数字比較

# -eq: 同じ
# -ne: 同一ではない
# -lt: 小いさい
# -le: 小さいか同じ
# -gt: 大きい
# -ge: 大きいか同じ

# 文字列比較
# =: 同じ
# !=: 同一ではない
# -z: 文字列の長さが0ならば真
# -n: 文字列の長さが0でないならば真

string="hello"

if [ -z "$string" ]; then
    echo "string is an empty string."
else
    echo "string is not an empty string."
fi

# 論理演算子

# &&: AND
# ||: OR

number=7

if [ $number -gt 5 ] && [ $number -lt 10 ]; then
    echo "number is bigger than 5 and smaller than 10."
fi

# case文
# 複数の場合の数を処理するときに使用します。スイッチ文と類似.

# case [condition] in
#     pattern 1)
#         command1
#     ;;
#     pattern 2)
#         command2
#     ;;
#     *)
#         Default command
#     ;;
# esac

fruit="apple"

case $fruit in
    "apple")
        echo "りんごです。"
        ;;
    "banana")
        echo "バナナです。"
        ;;
    *)
        echo "わからない果物です。"
        ;;
esac