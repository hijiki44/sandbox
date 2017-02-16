# position レイアウト
## 要素を絶対配置でレイアウトする（absolute）
- `position: absolute;` を指定すると、「基準ボックス」を基点として自由に配置させることができる
- 明示しない場合、自動的に body 要素が「基準ボックス」となる

### 注意点
- 要素内のコンテンツ量が増えた場合でも親要素が自動的に伸びたり、後続コンテンツが下に下がってくれない
- うまく設計しないと枠からはみ出したり、他のコンテンツと重なったりする
- 最悪の場合、情報の読み取りに支障をきたすこともある
- float でつくるようなマルチカラムレイアウトなど、絶対配置で作成することが可能でも、高さを固定できないコンテンツに適用するのは避けたほうが良い

## 要素を相対配置でレイアウトする（relative）
- `position: relative;` を指定すると、そのコンテンツの本来の位置を基準としてそこから上下左右にずらす形で配置させることができる
- 絶対配置をしたい要素の基準ボックスを設定する場合や他のコンテンツの上に重ねて帆ユジしたいような場合に使用する

## 要素を固定配置でレイアウトする（fixed）
- `position: fixed;` を指定すると、absolute と同様に絶対位置でコンテンツを配置させることができる
- 基準ボックスは常に body 要素となり、コンテンツをスクロールしてもウィンドウ内でずっと同じ位置から動かない点が absolute とは異なる

### 注意点
- IE6 以下、iOS4 以下、Android 2.1 以下は未対応のため、すべての環境で正しく動作するわけではない
- 現在ではユーザ数がかなり少ないため、考慮しなくても問題ないが、意識はしておいたほうが良い
- iOS5 以上、Android 2.2 以上で fixed に対応したものの、不具合も多いため、この点も注意しておく必要がある
- 不具合が発生する場合は CSS ではなく、JavaScript を使うなどの代替手段を検討したほうが良い