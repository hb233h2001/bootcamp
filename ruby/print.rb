# 1. puts (put string)
# - 出力した後に自動的に改行が入る。
# - 引数が複数ある場合は、それぞれを改行して出力する。
# - 主に単純な文字列出力に使用。

puts "Hello"
puts "World", "Ruby"

# 2. print
# - 出力した後に改行は入らない
# - 引数が複数ある場合は、それらを連続して出力する

print "Hello"
print "World", "Ruby"

# 3. p
# - "print"の略。
# - オブジェクトの内部表現を出力する
# - 出力の際に、オブジェクトの型や属性なども表示される
# - 主にデバッグ時に使用される

# puts, printの使い分け:
# 単純な文字列出力の場合はputsを使う
# 複数の値を連続して出力したい場合はprintを使う

name = "HamYoungJae"
p name
