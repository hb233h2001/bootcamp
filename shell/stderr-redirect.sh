#!/bin/bash

# エラーを発生させるコマンド (存在しないファイルの削除を試みる)
rm testfile 2> error.log

# 結果メッセージ出力
echo "エラーメッセージはerror.logファイルに記録されました。"