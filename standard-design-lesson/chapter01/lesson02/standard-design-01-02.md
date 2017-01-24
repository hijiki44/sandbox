# ブロック要素とインライン要素
- ブロック要素（ブロックレベル要素）
    - 一つのかたまり（ブロック）として扱われる
    - 一般的なブラウザで見ると、前後に改行が入る
    - 中にインライン要素や別のブロック要素を入れることができる
    - ブロック要素に分類される要素
    ```
    <address>、<blockquote>、<center>、<div>、<dl>、<fieldset>、<form>、
    <h1>-<h6>、<hr>、<noframes>、<noscript>、<ol>、<p>、<pre>、<table>、<ul>
    ```
- インライン要素
    - 主にブロック要素の内容として用いられる
    - 一般的なブラウザで見ると、前後に改行が入らず、文章の一部として表示される
    - 中にブロック要素を入れることができない
    - インライン要素に分類される要素
    ```
    <a>、<abbr>、<acronym>、<b>、<basefont>、<bdo>、<big>、<br>、<cite>、
    <code>、<dfn>、<em>、<font>、<i>、<img>、<input>、<kbd>、<label>、<q>、
    <s>、<samp>、<select>、<small>、<span>、<strike>、<strong>、<sub>、<sup>、
    <textarea>、<tt>、<u>、<var>
    ```

## HTML5 の場合
- スタイリングは CSS に任せ、要素はセマンティックのみを表す
    - スタイリングを指示するだけの要素が廃止された
        - big 要素、center 要素、font 要素など
    - 新たな意味が付加されて、残されている要素も一部ある
        - i 要素、b 要素、small 要素など
- ブロック要素、インライン要素という分類にセマンティックな意味がない
    - インライン、ブロックは CSS の初期値に過ぎない
    - HTML5 では新たな分類（カテゴリ）が導入された
        - 一つの要素が複数のカテゴリに属することもある

### HTML5 で新たに導入されたカテゴリ
- メタデータ・コンテンツ
- フロー・コンテンツ
- セクショニング・コンテンツ
- ヘッディング・コンテンツ
- フロージング・コンテンツ
- エンベデッド・コンテンツ
- インタラクティブ・コンテンツ

### HTML5 のタグ一覧
- http://webcre8.jp/investigate/html5-all-tags.html

### 参考 URL
- http://codezine.jp/article/detail/5614
- http://webcre8.jp/think/html5-block-inline.html
