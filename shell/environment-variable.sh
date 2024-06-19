#!/bin/bash

# 環境変数は、OSまたはshell セッションで定義された変数で、プログラムまたはスクリプトで使用できる値である。
# 環境変数は、システム全体またはユーザーの掲示レベルで設定することができる。
# システム設定、ユーザー環境、アプリケーション構成など様々な用途で活用可能。

# 一般変数と環境変数の違い

# 1. 範囲(Scope)

#   一般変数: 変数が宣言された範囲（関数、ブロックなど）内でのみ使用可能。
#   環境変数: システム全体またはユーザー セッション全体で使用可能。

# 2. 持続性(Persistence)

#   一般変数: 変数が宣言された関数やブロックが終了すると消滅。
#   環境変数: シェルセッション中に保持され、シェルが終了しても継続維持。

# 3. アクセシビリティ(Accessibility)

#   一般変数: 変数が宣言された範囲内でのみアクセス可能。
#   環境変数: システム全体またはユーザー セッション全体でアクセス可能。

# 4. 設定方法

#   一般変数: 変数宣言文法を使用して定義。
#   環境変数: export コマンドを使用して定義。

# 5. 使用目的

#   一般変数: プログラム内部で使用される一時データ保存
#   環境変数: プロセス、アプリケーション、シェルスクリプト間の情報共有

# 基本的な使い方

# 1. 環境変数読み取り:
# echo "HOME directory: $HOME" - $HOME: ホーム·ディレクトリ·パス
# echo "User name: $USER" - $USER: ユーザー名

# 2. 環境変数 設定:
# export MY_VARIABLE="some value"
# echo "My variable: $MY_VARIABLE"
# MY_VARIABLE ユーザーが直接定義した環境変数。
# export コマンドを使用して変数を環境変数に設定。

# 3. 環境変数の使用:
# if [ -z "$MY_VARIABLE" ]; then
#   echo "MY_VARIABLE is not set"
# else
#   echo "MY_VARIABLE is set to: $MY_VARIABLE"
# fi
# MY_VARIABLE 環境変数が設定されているか確認

# 4. 環境変数の継承:
# export MY_VARIABLE="parent value"
# echo "MY_VARIABLE in parent script: $MY_VARIABLE"

# ./child_script.sh

# echo "MY_VARIABLE in parent script: $MY_VARIABLE"

# child_script.sh でもMY_VARIABLE を使用することができる。
# このように環境変数はスクリプト間で継承される。