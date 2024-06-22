#!/bin/bash

# 1. カレントディレクトリに下のディレクトリを作成する
mkdir -p child-directory-a child-directory-b

# 2.1. カレントディレクトリからchild-directory-aにテスト.txtを生成
touch child-directory-a/test.txt

# 2.2. child-directory-aに移動
cd child-directory-a

# 2.3. child-directory-a から child-directory-b へ test.txt 移動
mv test.txt ../child-directory-b/

# 2.4. child-directory-bに移動
cd ../child-directory-b

# 2.5. カレントディレクトリのテスト.txtを親ディレクトリに移動
mv test.txt ..

# 完了メッセージ
echo "ファイルの移動操作が完了しました。"