# 表組みのスタイル
- 隣接するセルの境界線を重ねて表示： `border-collapse: collapse;`
- 垂直方向の行揃え： `vertical-align: top;`

# 入力フォームのスタイル
- ラベル要素： `<label for="like1">ラベル</label>`
- カーソルの形状を変更する： `cursor: pointer;`

# 表組みとフォーム部品の構造化
## 行と列のグループ化
- テーブルのヘッダー行グループ： `<thead></thead>`
- テーブルのフッター行グループ： `<tfoot></tfoot>`
    - HTML で記述する場合は thead -> tfoot -> tbody の順で記述する必要がある
- テーブルのデータ行グループ： `<tbody></tbody>`
- テーブルの列グループ： `<colgroup></colgroup>`

## アクセスシビリティを高めるテーブル関連要素・属性
- 表組みの簡潔な説明文を表す： `<caption></caption>`
- 表組み内容の概要解説を表す： `<table summary="概要"></table>`
- どちら方向に対する見出しなのかを明示するための属性： `<th scope="col"></th>`

## セルの結合
- 横方向の結合： `<td colspan="3"></td>`
- 縦方向の結合： `<td rowspan="3"></td>`

## フォームのグループ化
- コントロール部品を意味的にグループ化： `<fieldset><legend></legend></fieldset>`
