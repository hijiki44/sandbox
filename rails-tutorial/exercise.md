# 演習問題
## 1.1.1 前提知識
### 1. Ruby on Rails で使う Ruby gem はどの Web サイトにありますか。
- RubyGems.org
    - https://rubygems.org/

### 2. 現時点での Rails の最新バージョンはいくつですか。
- Rails 5.1.4 （2017/12/19 現在） ※ 2017/09/07 リリース

### 3. Ruby on Rails はこれまでに何回ダウンロードされたでしょうか。
- 116,460,958（2017/12/19 現在）
    - 参考： http://bestgems.org/search?q=rails

## 1.3.2 rails server
### 1. デフォルトの Rails ページに表示されているものと比べて、今の自分のコンピュータにある Ruby のバージョンはいくつになっていますか？（`ruby -v` で確認する）
- 5.1.2

### 2. 同様にして Rails のバージョンも調べてみましょう。（`rails -v` で確認する）
- 2.4.2

## 1.3.4 Hello, world!
### 1. hello アクションを書き換え、「Hello, world!」の代わりに「Hora, mundo!」と表示されるようにしてみましょう。
- ApplicationController.rb の hello アクションを修正
- 「Hello, world!」を「Hora, mundo!」の書き換えて、起動したらちゃんとブラウザで表示された

### 2. Rails では「非 ASCII 文字」もサポートされています。「¡Hora, mundo!」にはスペイン語特有の逆さ感嘆符「¡」が含まれています。「¡Hora, mundo!」と表示されるようにしてみましょう。
- ApplicationController.rb の hello アクションを修正
- 逆さ感嘆符「¡」を入力したら、エディタ上でエラーが出た。。（でも、ちゃんと起動はできるし、文字化けせずにブラウザに表示される）
    - Rails では「!」（感嘆符）に「例外が発生するメソッド」という意味があるせいかも？
        - 参考： https://qiita.com/Waaaaaaaaaaaaa/items/5968971c9d2b3ab0a84d
    - ちなみに Ruby の「!」にはまた違う意味があって、「破壊的メソッド」を表しているらしい。。注意を促すんだとか。。
        - 参考： http://mikamisan.hatenablog.com/entry/2016/03/28/221356

### 3. hello アクションを参考にして、2 つ目のアクション goodbye を追加しましょう。このアクションは「Goodbye, world!」というテキストを表示します。ルーティングを編集して、ルートルーティングの割り当て先を hello アクションから goodbye アクションに変更します。
- ApplicationController.rb に goodbye アクションを追加し、routes.rb を修正
- ちゃんと起動できて、ブラウザに表示された
