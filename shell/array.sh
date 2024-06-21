#!/bin/bash

# shell script / array

# 配列(array)は、複数のデータを一つの変数に保存できるようにするデータ構造。
# shellでは一定の配列(array)を宣言し、値を割り当ててデータを効果的に管理·処理可能。

# 配列の特徴
# 1. 同じデータタイプの値を保存。
# 2. 各値はインデックス（index）という番号で区分。
# 3. インデックスは一般的に0からスタート。
# 4. 配列の大きさは固定されている。 すなわち、最初に宣言した大きさを変更することはできない。

# 基本的な使い方

# 宣言方法:
# 配列宣言: array_name=(value1 value2 value3 ...)
# 個別要素割り当て: array_name[index]=value

# 配列要素アクセス:
# ${array_name[index]} 形式で接近
# 配列の最初の要素はインデックス 0 から開始

# 配列長確認:
# ${#array_name[@]}または${#array_name[*]}で配列の長さを確認

# 配列全体出力:
# ${array_name[@]} または ${array_name[*]} で配列全体を出力

# 配列ループ:
# for element in "${array_name[@]}"; do ··· done形式でループ可能
# for index in "${!array_name[@]}"; do ··· done形式でインデックスループが可能

# 配列操作:
# array_name+=(new_value)で配列に要素を追加
# unsetarray_name[index]で特定の要素を削除
# array_name=(${array_name[@]})で配列を再割り当て

# 数値配列のインデックスを使用して各要素を出力する例

# 数字配列宣言
numbers=(10 20 30 40 50)

# 配列インデックス·ループ
echo "Array elements by index:"
for index in "${!numbers[@]}"; do
  echo "Index $index: ${numbers[$index]}"
done

# 文字列配列のインデックスを使用して各要素を出力する例

# 文字列配列宣言
names=("John" "Jane" "Bob" "Alice")

# 配列インデックス·ループ
echo "Names by index:"
for index in "${!names[*]}"; do
  echo "Index $index: ${names[$index]}"
done

# 条件を設定し、それに合ったインデックスを探す

# 数字配列宣言
numbers=(10 25 40 15 30 20)

# 20以上の要素のインデックスを探す
echo "Indices of numbers bigger than or equal to 20:"
for i in "${!numbers[@]}"; do
  if [ "${numbers[$i]}" -ge 20 ]; then
    echo "${numbers[$i]}"
  fi
done
