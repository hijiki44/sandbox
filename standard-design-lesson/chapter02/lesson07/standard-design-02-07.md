# ショートハンド
- 特定のプロパティを一括で指定すること（Google HTML/CSS Style Guide でも推奨されている）
- プロパティによっては指定する値の順番が決まっているものもあるので注意！

```
body {
	background-color:#fbf9cc;
  background-image: url(img/bg-stripe01.png);
  background-repeat: repeat-x;
}
```

ではなく

```
body {
  background: #fbf9cc url(img/bg-stripe01.png) repeat-x;
}
```

とする

## よく使うショートハンド
### margin / padding （値の順番に意味がある）
- 例）1 つの値を指定した場合 `margin: 0;`
```
margin-top: 0;
margin-right: 0;
margin-bottom: 0;
margin-left: 0;
```

- 例）2 つの値を指定した場合 `margin: 0 10;`
```
margin-top: 0;
margin-right: 10;
margin-bottom: 0;
margin-left: 10;
```

- 例） 3 つの値を指定した場合 `margin: 0 10 20;`
```
margin-top: 0;
margin-right: 10;
margin-bottom: 20;
margin-left: 10;
```

- 例） 4 つの値を指定した場合 `margin: 0 10 20 30;`
```
margin-top: 0;
margin-right: 10;
margin-bottom: 20;
margin-left: 30;
```

### border （値の順番に意味がない）
- ただし、常に 3 つの値の指定が必要
- 例） `border: #f00 1px solid;`
```
border-color: #f00;
border-width: 1px;
border-style: solid;
```

### background （値の順番に意味がない）
- 省略された値は初期値で上書きされる（＝初期値と同じ場合は省略可能）
- background-position は数値も指定可能（起点は左上）
- 例） `background: #fff url(img/bg-stripe.png) left top repeat-x;`
```
background-color: #fff;
background-image: url(img/bg-stripe.png);
background-position: left top;  /* 初期値と同じなので省略可能 */
background-repeat: repeat-x;
```

#### background-color を指定するときの注意点
- OK： ショートハンドでセットされた初期値が上書きされる
```
background: url(img/bg.gif) right top no-repeat;
background-color: #f00;
```

- NG： ショートハンドで背景色を省略したので初期値で上書きされる
```
background-color: #f00;
background: url(img/bg.gif) right top no-repeat;
```

# 背景画像を使わないと表現できないデザイン
- CSS2.1 までの場合、画像素材が必要（また、1 つの要素に使える背景画像は 1 枚だけという制限がある）
- CSS3 までの場合、画像素材は不要

# Web で扱う画像形式
## PNG8
- 最大 256 色
- アイコン、イラスト、画像文字でよく使われる

## PNG-24/32
- フルカラー
- 半透明処理が必要な画像によく使われる
- JPEG よりファイルサイズが大きくなる
