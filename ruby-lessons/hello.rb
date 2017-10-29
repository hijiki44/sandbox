# -----
# 01
# 環境構築など

# -----
# 02
# コメント

=begin
コメント
コメント
コメント
=end

=begin
print "hello world"
puts "hello world" # 改行
p "hello world" # デバッグ用
=end

# -----
# 03
# 変数
# - 英小文字 かアンダーバーから始める

# msg = "hello world"
# puts msg
#
# msg = "hello world again"
# puts msg

# 定数
# - 英大文字から始める

# VERSION = 1.1
# puts VERSION
#
# VERSION = 1.2
# puts VERSION

# -----
# 04
# - すべてがオブジェクト
# - String Class
#   - "hello world".length
#   - "hello world".reverse
# - Float Class
#   - 1.1.round
#   - 1.1.floor

# -----
# 05
# 数値
# 32 4.8

# p 4.8.class
# p 4.8.methods

# + - * / % **

# p 10 + 3
# p 10 * 3
# p 2.4 * 3
# p 10 / 3 # 3
# p 10 % 3 # 1
# p 10.0 / 3
# p Rational(2, 5) + Rational(3, 4)
# p 2/5r + 3/4r

# p 52.6.round # 四捨五入
# p 52.6.floor # 切り捨て
# p 52.6.ceil # 切り上げ

# -----
# 06
# 文字列
# - "" 特殊文字 式展開ができる
# - ``

# puts "hell\no worl\td"
# puts 'hell\no worl\td'

# puts "price #{3000 * 4}"
# puts 'price #{3000 * 4}'

# name = "name"
# puts "hello #{name}"

# + *
# puts "hello " + "world"
# puts "hello " * 10

# -----
# 07
# !
# - upcase 文字列を大文字にしたものを返す
# - upcase! 文字列を大文字にしたものを返す + 元の文字列も大文字にする（破壊的なメソッド）
# - downcase reverse

# name = "hogehoge"
# puts name.upcase
# puts name
# puts name.upcase!
# puts name

# ? 真偽値を返す true false

# p name.empty? # false
# p name.include?("g") # true

# -----
# 08
# 配列

# colors = ["red", "blue", "yellow"]

# p colors[0] # 添字
# p colors[-1] # 末尾
# p colors[0..2] # 0 から 2 まで
# p colors[0...2] # 0 から 2 の直前まで
# p colors[5] # nil

# colors[0] = "pink"
# colors[1..2] = ["white", "black"]
# colors.push("gold")
# colors << "silver" # push のシンタックスシュガー
# p colors
#
# p colors.size
# p colors.sort

# -----
# 09
# ハッシュ
# - key / value

# hoge 200
# fuga 400

# scores = {"hoge" => 200, "fuga" => 400}
# scores = {:hoge => 200, :fuga => 400} # シンボル　高速
# scores = {hoge: 200, fuga: 400} # もっと簡単に書ける
#
# p scores[:hoge]
# scores[:fuga] = 600
# p scores
#
# p scores.size
# p scores.keys
# p scores.values
# p scores.has_key?(:hoge)

# -----
# 10
# 変換

# x = 50
# y = "3"
#
# p x + y.to_i
# p x + y.to_f
# p x.to_s + y

# scores = {hoge: 200, fuga: 400}
#
# p scores.to_a.to_h

# -----
# 11
# %

# puts "he\"llo"
# puts 'he\'llo'
#
# puts %Q(he"llo) # 大文字にすると、ダブルクォーテーションと同じ
# puts %(he"llo) # Q を省略できる
# puts %q(he'llo) # 小文字にすると、シングルクォーテーションと同じ

# p ["red", "blue"]
# p ['red', 'blue']
#
# p %W(red blue)
# p %w(red blue)

# -----
# 12
# "文字列" % 値
# %s
# %d
# %f

# p "name: %s" % "hoge"
# p "name: %10s" % "hoge"
# p "name: %-10s" % "hoge"

# p "id: %05d, rate: %10.2f" % [355, 3.284]

# printf
# sprintf

# p sprintf("name: %s\n", "hoge")
# p sprintf("id: %05d, rate: %10.2f\n", 355, 3.284)

# -----
# 13
# if
# 比較演算子 > < >= <= == !=
# 論理演算子 &&(AND) ||(OR) !(NOT)

# score = gets.to_i

# if score > 80
#   puts "great!"
# elsif score > 60
#   puts "good!"
# else
#   puts "so so ..."
# end

# puts "great!" if score > 80

# -----
# 14
# case

# signal = gets.chomp # 1行読み込み + 改行を取り除く
#
# case signal
# when "red"
#   puts "stop!"
# when "green", "blue"
#   puts "go!"
# when "yellow"
#   puts "caution!"
# else
#   puts "wrong signal"
# end

# -----
# 15
# while

# i = 0
#
# while i < 10 do
#   puts "#{i}: hello"
#   # i = i + 1
#   i += 1
# end

# times

# 10.times do |i|
#   puts "#{i}: hello"
# end

# 10.times { |i| puts "#{i}: hello" }

# -----
# 16
# for

# for i in 15..20 do
#   p i
# end
#
# for color in ["red", "blue"] do
#   p color
# end
#
# for name, score in [hoge: 200, fuga: 400] do
#   puts "#{name}: #{score}"
# end

# each
# (15..20).each do |i|
#   p i
# end
#
# ["red", "blue"].each do |color|
#   p color
# end
#
# [hoge: 200, fuga: 400].each do |name, score|
#   puts "#{name}: #{score}"
# end

# -----
# 17
# loop

# i = 0
# loop do
#   p i
#   i += 1
# end

# break
# next

# 10.times do |i|
#   if i == 7 then
#     # break
#     next
#   end
#   p i
# end

# -----
# 18
# メソッド

# def sayHi(name = "muga")
#   score = 80
#   # puts "hi! #{name}"
#   return "hi! #{name}"
# end
#
# # sayHi("hoge")
# # sayHi "fuga"
# # sayHi
#
# p sayHi
# p score

# -----
# 19
# クラス

# class User # 大文字から始める
#
#   def initialize(name)
#     @name = name # インスタンス変数は @ をつける
#   end
#
#   def sayHi
#     puts "hi! i am #{@name}"
#   end
# end
#
# tom = User.new("tom")
# tom.sayHi
#
# bob = User.new("bob")
# bob.sayHi

# -----
# 20
# アクセッサ

# class User # 大文字から始める
#
#   attr_accessor :name
#   # setter: name=(value)
#   # getter: name
#
#   # attr_reader: name # getter だけ
#
#   def initialize(name)
#     @name = name # インスタンス変数は @ をつける
#   end
#
#   def sayHi
#     # self
#     # self.name -> @name
#     puts "hi! i am #{@name}"
#     puts "hi! i am #{self.name}" # getter を呼び出す
#     puts "hi! i am #{name}" # self は省略できる
#   end
# end
#
# tom = User.new("tom")
# tom.sayHi
#
# tom.name = "bob"
# tom.sayHi # レシーバと呼ぶ

# -----
# 21
# - クラスメソッド
# - クラス変数
# - 定数

# class User # 大文字から始める
#
#   @@count = 0 # クラス変数は @@ をつける
#
#   VERSION = 1.1
#
#   def initialize(name)
#     @@count += 1
#     @name = name # インスタンス変数は @ をつける
#   end
#
#   def sayHi
#     puts "hi! i am #{@name}"
#   end
#
#   def self.info
#     puts "#{VERSION}: User Class, #{@@count} instances."
#   end
# end
#
# tom = User.new("tom")
# bob = User.new("bob")
# steve = User.new("steve")
# User.info
# p User::VERSION

# -----
# 21
# 継承

# class User # 大文字から始める
#
#   def initialize(name)
#     @@count += 1
#     @name = name # インスタンス変数は @ をつける
#   end
#
#   def sayHi
#     puts "hi! i am #{@name}"
#   end
#
# end
#
# # User: 親クラス、スーパークラス
# # AdminUser: 子クラス、サブクラス
# class AdminUser < User
#
#   def sayHello
#     puts "hello from #{@name}"
#   end
#
#   # オーバーライド
#   def sayHi
#     puts "hi! from admin!"
#   end
#
# end
#
# tom = AdminUser.new("tom")
# tom.sayHi
# tom.sayHello

# -----
# 22
# メソッドのアクセス権
# - public
# - protected
# - private: レシーバーを指定できない

# class User # 大文字から始める
#
#   def sayHi
#     puts "hi!"
#     sayPrivate
#     # self.sayPrivate # self は省略する
#   end
#
#   private
#
#     def sayPrivate
#       puts "private"
#     end
#
# end
#
# class AdminUser < User
#
#   # def sayHello
#   #   puts "hello!"
#   #   sayPrivate
#   # end
#
#   def sayPrivate
#     puts "private from admin"
#   end
#
# end
#
# # User.new.sayPrivate # NG
# User.new.sayHi
#
# # AdminUser.new.sayHello
# AdminUser.new.sayPrivate # ruby の private メソッドはサブクラスから呼び出せたり、オーバーライドができる

# -----
# 24
# モジュール
# - 名前空間

# def movie_encode
# end
#
# def movie_export
# end
#
# class User
#
#   def initialize(name)
#     @name = name
#   end
#
#   def sayHi
#     puts "hi! from #{@name}"
#   end
#
# end
#
# module Movie # モジュール名は大文字から始める
#
#   VERSION = 1.1
#
#   def self.encode
#     puts "encoding..."
#   end
#
#   def self.export
#     puts "exporting..."
#   end
#
# end
#
# Movie.encode
# Movie.export
# p Movie::VERSION

# Ruby の class と module の違い
# https://qiita.com/miyazawa_shi/items/ad587553041a8a484415
# - class で module は呼べるけど、module に class は呼べない？？
# 。。というより、クラス変数が持てない（定数以外はメソッドの外にかけない？）っぽい

# class User
#
#   def initialize(name)
#     @name = name
#   end
#
#   def sayHi
#     puts "hi! from #{@name}"
#   end
#
# end
#
# module Voice # モジュール名は大文字から始める
#
#   # @user = User.new("tom") # ここに書くのはエラーになるっぽい
#   GOODBYE = "goodbye" # 定数は大丈夫そう
#
#   def self.sayHi
#     @user = User.new("tom")
#     puts @user.sayHi
#   end
#
#   def self.sayGoodbye
#     puts GOODBYE
#   end
#
# end
#
# Voice.sayHi
# Voice.sayGoodbye
# p Voice::GOODBYE

# -----
# 25
# module
# - ミックスイン 共通の処理を提供する場合に使用すると便利

# module Debug
#
#   def info # class などで include されることを前提とするメソッドには self をつけない＝ミックスイン
#     puts "#{self.class} debug info..."
#   end
#
#   def self.test
#     puts "test"
#   end
#
# end
#
# class Player
#   include Debug
# end
#
# class Monster
#   include Debug
# end
#
# Player.new.info
# Monster.new.info
#
# Debug.test
# Debug.info # エラーになる

# Player.new.test # もちろんこれもエラーになる
# Monster.new.test # もちろんこれもエラーになる

# -----
# 26
# 例外

# class MyError < StandardError; end
#
# x = gets.to_i
#
# # begin
# #   p 100 / x
# # rescue => ex
# #   p ex.message
# #   p ex.class
# #   puts "stopped!"
# # ensure
# #   puts "-- END --"
# # end
#
# begin
#   if x != 3
#     raise MyError
#   end
# rescue MyError
#   puts "not 3!"
# ensure
#   puts "-- END --"
# end
