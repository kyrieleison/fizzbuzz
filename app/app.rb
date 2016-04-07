require 'Interface'

class Printer

  def print(arg)
    p arg
  end
end

puts 'メニューを選択してください'
menu = <<'EOS'
1を入力
FizzBuzzをスタートする
2を入力
プログラムを起動してから実施したFizzBuzzで入力した値と、その結果の履歴を表示する
メモリ上に保持
3を入力
FizzBuzzの結果の履歴をファイルに保存する
ファイルに永続化
4を入力
FizzBuzzの結果の履歴のファイルを読み込んで表示する
過去に永続化したデータ
0を入力
プログラムを終了する
EOS
puts menu

mode_number = STDIN.gets
Interface.new(STDIN, Printer.new).start(mode_number.chomp)
