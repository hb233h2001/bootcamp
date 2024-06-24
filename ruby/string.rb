# 1. Stringクラスの概要
# - Stringクラスは、文字列を表現するクラス。
# - 文字列の生成、操作、変換などさまざまなメソッドを提供。
# - 文字列はimmutable(不変)オブジェクトなので、一度生成されると変更。

# 2. Stringクラスの主なメソッド
# - length, size - 文字列の長さを出力。
# - upcase, downcase - 文字列を大文字/小文字に変換。
# - strip - 文字列の前後の空白を削除。
# - split - 文字列を指定した区切り文字で分割。
# - join - 配列の要素を指定した区切り文字で連結。
# - gsub - 文字列内の特定の部分を置換。
# - include? - 文字列に特定の文字が含まれているかを確認。

# 3. 使用例
# 文字列の生成
str = "I'm trying better to try out."

# 長さの取得
puts str.length

# 大文字/小文字変換
puts str.upcase
puts str.downcase

# 前後の空白削除
puts str.strip

# 文字列の分割
words = str.split
words = str.split(" ")

# 文字列の連結
array = ["I'm", "trying", "better", "to", "try", "out."]
puts array.join(" ")

# 文字列の置換
puts str.gsub("try out", "ruby")

# 文字列の検索
puts str.include?("try out")
