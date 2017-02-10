# CSS スプライトで横並びの画像メニューを作る
## CSS スプライト
### メリット
- 画像の読み込みが 1 度で完了する
- ユーザの操作に対して表示位置をずらすだけなので、リアルタイムで表示の切り替えが可能
- 多くのアクセスが集中するような Web サイト・サービスを構築するときなど、表示パフォーマンスが非常に重視される場合に有効

### デメリット
- 制作とメンテナンスに手間がかかる
- サイトのあちこちで使う画像をひとまとめにせず、部品ごとにスプライトも分割するなどの工夫が必要
- 複数の画像から必要なコードを自動的に書き出してくれる CSS スプライト作成支援ツールもある
    - CSS Sprite Generator： http://spritegen.website-performance.org/
    - Sprite Pad： https://wearekiss.com/spritepad
    - Sprite Cow： http://www.spritecow.com/
    - Adobe Fireworks CS6： http://www.adobe.com/jp/devnet/fireworks/articles/css_sprite.html

# グローバルナビゲーションの現在位置を表示する
## CSS シグネチャ
### メリット
- カテゴリやページごとに異なるスタイルを簡単に設定できる
- 新規作成時も楽なうえ、あとでメンテナンスするにも分かりやすい
- 複数カテゴリからなる Web サイトで、カテゴリごとにテーマカラーが異なるような場合などに有効

### デメリット
- 汎用性が低く、他のページで流用できない
