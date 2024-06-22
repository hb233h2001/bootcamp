#!/bin/bash
# シェルでは、ループは特定のタスクを繰り返し実行するために使用。
# シェルでよく使われる二つのループはforループとwhileループである。

# 基本的な使い方

# 1. for ループ
# for 主に決められた範囲やリストの項目を繰り返す時に使用。

# for Variable in list
# do
#   commands
# done

for item in 1 2 3 4 5
do
  echo "item: $item"
done

# ファイルやディレクトリのリストを繰り返す時も使用可能。

# 現在のディレクトリ内のすべてのファイルを繰り返す例
for filename in *
do
  echo "Filename: $filename"
done

# 2. while ループ
# while ループは与えられた条件が真である際、commandを繰り返し実行。

# while [ conditions ]
# do
#   commands
# done

# 1から5までの数字を出力する例
counter=1
while [ $counter -le 5 ] # counterが5と同じか小さいか真でないまで。
do
  echo "Counter: $counter"
  counter=$((counter + 1)) # 繰り返しごとにcounter値を出力し、1ずつ増加
done

# ファイルの内容を読み込むときもwhileループを使用可能.

# ファイルの各行を読み込む例
filename="example.txt"

while IFS= read -r line # example.txtファイルの各行を空白とバックスラッシュをそのまま維持しながら読み込んで出力。
do
  echo "Line: $line"
done < "$filename"

# IFS (Internal Field Separator)
# IFSはシェルで入力をフィールドに区分する際に使用する内部フィールド区分子。
# 基本的にIFSは空白（スペース）、タブ、そして改行文字を含む。
# IFS を変更すると、テキストを区分する方式を調整することができる。

# 3. until ループ
# until ループは与えられた条件が嘘である際、commandを繰り返し。 while ループと反対。

# until [ conditions ]
# do
#   commands
# done

# 1から5まで数字を出力する例(until使用)
counter=1
until [ $counter -gt 5 ] # counterが5より大きいことが真であるまで
do
  echo "Counter: $counter"
  counter=$((counter + 1))
done

# seq commandはシェルで数字シーケンスを生成するのに使用。
# これを活用してfor ループとともに数字範囲を簡単に繰り返し可能。
# seq commandは開始番号、終了番号、増加値を指定することができる。

# seq command 使い方
# 基本構文: seq 開始番号 終了番号
# 増加値を指定する場合:seq開始番号増加値終了番号

# 基本構文例
# 1から5までの数字を出力する例
for i in $(seq 1 5)
do
  echo "Number: $i"
done

# 増加値を指定する場合の例
# 1から10まで2ずつ増加する数字を出力する例
for i in $(seq 1 2 10)
do
  echo "Number: $i"
done

# seq commandの他のオプション
# -w: 固定された幅で数字を出力。 ex) seq -w 1 10 → 01, 02, 03, ... , 10
# -s: 出力間で区切り文字を指定。 ex) seq -s "; " 1 10 → 1;2;3; ... ;10

# seq command と for ループ 結合。
# seq commandを使用すると数字範囲を生成できるので、for ループ と結合して繰り返し作業を行いやすい。

# 1から5までの数字を使ってループを実行
for i in $(seq 1 5)
do
  # ファイル名を指定
  filename="file_$i.txt"
  
  # ファイルの作成とそのファイルへのテキストの追加
  echo "このファイルには数字の $i が含まれます。" > $filename
  
  # 生成されたファイルの内容を出力(確認用途)
  cat $filename
done
