#!/bin/bash

mkdir -p child-directory-a child-directory-b

touch child-directory-a/test.txt

cd child-directory-a

mv test.txt ../child-directory-b/

cd ../child-directory-b
mv test.txt ..

echo "ファイルの移動操作が完了しました。"
