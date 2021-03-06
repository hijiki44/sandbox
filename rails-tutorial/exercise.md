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

## 1.5.3 Heroku にデプロイする (2)
### 1. 本番アプリでも「hola, mundo!」を表示できるようにしてください。
- 先走って Git 管理をやってしまっていたので、最初から「Goodbye, world!」が表示されてしまった。。

### 2. ルートへのルーティングを変更して goodbye アクションの結果が表示されるようにしてください。またデプロイ時には、Git push の master をあえて省略し、git push herokuでデプロイできることを確認してみてください。
- こちらも 1. と同様。。master を省略してもデプロイできることだけあとで確認する。

## 1.5.4 Heroku コマンド
### 1. Heroku アプリのログを表示するコマンドはどれですか。（heroku help で確認）
- コマンドは `heroku logs`

### 2. アプリの状態を調べるためのコマンドはどれですか。直近に発生したイベントは何でしたか。
- コマンドは `heroku ps`
- 直近に発生したイベントは `up`

## 2.2.1 ユーザーページを探索する
### 1. 新しいユーザーを作成し、ブラウザの HTML インスペクター機能を使って「User was successfully created.」の箇所を調べてみてください。ブラウザをリロードすると、その箇所はどうなるでしょうか。
- `<p id="notice">User was successfully created.</p>` → `<p id="notice"></p>`
    - リロードしたらブランクになった

### 2. email を入力せず、名前だけを入力しようとした場合、どうなるでしょうか。
- 登録できた

### 3. 「@example.com」のような間違ったメールアドレスを入力して更新しようとした場合、どうなるでしょうか。
- 更新できた

### 4. 演習で作成したユーザーを削除してみてください。ユーザーを削除したとき、Rails はどんなメッセージを表示するでしょうか。
- User was successfully destroyed.

## 2.2.2 MVC の挙動
### 1. /users/1/edit という URL にアクセスしたときの振る舞いについて図を書いてみてください。
- 1: ブラウザから `users/1/edit` という URL のリクエストを Rails サーバに送信する
- 2: `users/1/edit` リクエストは Rails router を経由して、Users コントローラ内の edit アクションに割り当てられる
- 3: edit アクションが実行され、User モデルに「id が 1 のユーザを取り出せ」（User.find）と問い合わせる
- 4: User モデルは問い合わせを受け、id が 1 のユーザをデータベースから取り出す
- 5: データベースから取り出したユーザを User モデルからコントローラーに返す
- 6: Users コントローラは、ユーザを @user 変数に保存し、edit ビューに渡す
- 7: edit ビューが起動し、ERB を実行して HTML を生成する
- 8: コントローラは、ビューで生成された HTML を受け取り、ブラウザに返す

### 2. 図示した振る舞いを見ながら、Scaffold で生成されたコードの中でデータベースからユーザー情報を取得しているコードを探してみてください。
- :set_user の部分

### 3. ユーザーの情報を編集するページのファイル名は何でしょうか。
- edit.html.erb

## 2.3.1 マイクロポストを探索する
### 1. 新しいマイクロポストを作成し、ブラウザの HTML インスペクター機能を使って「Micropost was successfully created.」の箇所を調べてみてください。ブラウザをリロードすると、その箇所はどうなるでしょうか。
- `<p id="notice">Micropost was successfully created.</p>` → `<p id="notice"></p>`
    - リロードしたらブランクになった

### 2. マイクロポストの作成画面で、Content も User も空にして作成しようとするどうなるでしょうか。
- 登録できた

### 3. 141 文字以上の文字列を Content に入力した状態で、マイクロポストを作成しようとするとどうなるでしょうか。
- 作成できた

### 4. 上記の演習で作成したマイクロポストを削除してみましょう。
- 削除できた

## 2.3.2 マイクロポストをマイクロにする
### 1. もう一度 Content に 141 文字以上を入力してみましょう。どのように振る舞いが変わったでしょうか。
- エラーメッセージが表示されるようになった

### 2. ブラウザの HTML インスペクター機能を使って、表示されたエラーメッセージを調べてみてください。
- エラーメッセージは以下のとおり（画面上部、フィールド名、フィールドの順）

```
<div id="error_explanation">
  <h2>1 error prohibited this micropost from being saved:</h2>

  <ul>
    <li>Content is too long (maximum is 140 characters)</li>
  </ul>
</div>
```

```
<div class="field_with_errors">
  <label for="micropost_content">Content</label>
</div>
```

```
<div class="field_with_errors">
  <textarea id="micropost_content" name="micropost[content]">012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789</textarea>
</div>
```
