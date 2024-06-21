#!/bin/bash
# echo command

# echo コマンドは、シェルで非常に頻繁に使用される基本的なコマンドの 1 つで、指定した文字列を出力するために使用。
# ファイルやスクリプトからテキストを画面に出力したり、変数の値を確認するときなど様々な用途で活用可能。

# 基本的な使い方

# echo [OPTION] [OUTPUT]

# 1. 簡単な文字列出力
echo "hello, World!"

# 2. 変数値を出力
name="Ham YoungJae"
echo "My name is $name"

# 主要オプション

# -n: 出力後、改行をしない。
# echo -n "Hello, World"

# -e: バックスラッシュ(\)を持つ特殊文字を解析して出力
# echo -e "Line1\nLine2"

# -E: バックスラッシュ(\)がある特殊文字を解析しない(デフォルト)。
# echo -E "Line1\nLine2"

# 特殊文字
# \n: 新しい線
# \t: タップ
# \\: バックスラッシュ
# \": 二重引用符

# ファイルへの出力
# echo コマンドの出力結果をファイルに保存できる。
echo "this is a test." > test.txt
