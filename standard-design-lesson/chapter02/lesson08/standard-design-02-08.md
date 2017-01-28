# センタリング
## ボックスそのものをセンタリングする場合
- margin の左右に auto を指定する
```
margin: 40px auto;
```

## ボックスの中身をセンタリングする場合
- taxt-align で center を指定する
```
text-align: center;
```

# width で指定される範囲
- width で指定される範囲は、border や padding や margin を除いたコンテンツ領域のみ
- 全体の横幅は `border の太さ * 2 + padding * 2 + margin * 2 + width で指定した範囲` となる

# ボックスモデル
- border が 1px、padding が 80px、margin が 0 で全体の横幅を 960px にしたい場合に width に指定すべき値を求める
```
960 - (80 * 2) - (1 * 2) = 960 - 160 - 2 = 798 px
```

# カラム落ち
- float で段組にした際に、横並びにした要素ボックスの合計サイズが親要素の width を 1px でもはみ出してしまうと、一番端のボックスが次の行に改行されてしまう現象のこと

# 基本的な float の仕組み
- 回り込ませたくない要素には `clear: both;` を指定する
