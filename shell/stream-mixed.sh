#!/bin/bash

while true; do
  # ユーザー入力を受ける
  echo "okまたはngを入力してください(ループを終了するには1を入力してください): "
  read input

  # 入力値によって異なる処理を実行
  case "$input" in
    ok)
      # 標準出力をok.txtにリダイレクト
      echo "これはOKメッセージです。" > ok.txt
      echo "標準出力がok.txtに記録されました。"
      break
      ;;
    ng)
      # 標準エラー出力をng.txtにリダイレクト
      echo "これはエラーメッセージです。" > ng.txt
      echo "標準エラー出力がng.txtに記録されました。"
      break
      ;;
    1)
      echo "ループを終了します。"
      exit 0
      ;;
    *)
      echo "無効な入力です。"
      ;;
  esac
done 