# パス指定
- 絶対パス
- 相対パス
- ルート相対パス

## ネットワークパス参照
- 以下のように、プロトコル部分（http:、https:）を省略したパス指定のこと
```
<a href="//google.co.jp">
```
- 参考： http://qiita.com/arai-wa/items/d9b73539898d658b58c5

### メリット
- 遷移元ページのプロトコルを引き継げる
    - 遷移元ページを http で参照した場合、リンク先も http でアクセスされる
    - 同様に、遷移元ページを https で参照した場合、リンク先も https でアクセスされる

### デメリット
- IE7/IE8 の場合、 2 回読み込まれるらしい
- 参考： https://plus.google.com/107256233060017052549/posts/1WBASDwuLPk

### 注意点
- リンク先が http、または、https のどちらかにしか対応していなかった場合、ネットワークパス参照だとアクセスできないことがあるので注意！

# Google HTML/CSS Style Guide（和訳）
- ネットワークパス参照が推奨されている、というところからの派生
- 参考： http://re-dzine.net/2012/05/google-htmlcss-style-guide/

## 閉じタグの省略
- HTML5 では、閉じタグ（</li> など）を省略できる要素がある
```
li, dt, dd, p, tr, td, th, rt, rp, optgroup, option, thread, tfoot
```
- 参考： http://kenyo--c.com/html/111/

## HTML バリデータ
- http://validator.w3.org/nu/

## type 属性
- type 属性
```
<!-- NG -->
<link rel="stylesheet" href="//www.google.com/css/maia.css" type="text/css">

<!-- OK -->
<link rel="stylesheet" href="//www.google.com/css/maia.css">
```

## CSS バリデータ
- http://jigsaw.w3.org/css-validator/

## URI 値の引用符の省略
- CSS の URL は引用符（" " など）を省略する
```
@import url(//www.google.com/css/go.css);
```
