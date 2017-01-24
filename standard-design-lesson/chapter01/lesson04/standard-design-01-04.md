# フォーム部品
- テキストフィールド（シングルライン）
```
<input type="text" name="text">
```
- テキストフィールド（マルチライン）
```
<textarea name="textarea">test test</textarea>
```
- テキストフィールド（パスワード）
```
<input type="password" name="password">
```
- ラジオボタン
```
<input type="radio" name="radio" value="1" checked>aaa
<input type="radio" name="radio" value="2">bbb
```
- チェックボックス
```
<input type="checkbox" name="check1" value="1" checked>aaa
<input type="checkbox" name="check2" value="2">bbb
<input type="checkbox" name="check3" value="3">ccc
```
- ファイルアップロード
```
<input type="file" name="file">
```
- 非表示フィールド
```
<input type="hidden" name="hidden" value="1">
```
- 送信ボタン
```
<input type="submit" value="送信">
```
- リセットボタン
```
<input type="reset" value="リセット">
```
- 汎用ボタン
```
<input type="button" value="ボタン">
```
- 画像ボタン
```
<input type="image" src="img/button.png" alt="送信">
```
- セレクトメニュー（単一選択）
```
<select name="select">
  <option value="1">メニュー1</option>
  <option value="2" selected>メニュー2</option>
  <option value="3">メニュー3</option>
</select>
```
- セレクトメニュー（複数選択）
```
<select name="select" multiple>
  <option value="1">メニュー1</option>
  <option value="2" selected>メニュー2</option>
  <option value="3" selected>メニュー3</option>
</select>
```
- ラベル
```
<input type="checkbox" name="checkbox1" id="checkbox1"><label for="checkbox1">aaa</label>
```

## HTML5 で追加されたフォーム部品・属性
- レンジ入力
```
<input type="range">
```
- オートフォーカス
```
<input type="text" name="" autofocus>
```
- 初期表示（プレースホルダー）
```
<input type="text" name="" placeholder="入力してください">
```
```
<textarea name="" id="" cols="20" rows="3" placeholder="ご記入ください"></textarea>
```
- 入力内容を必須に
```
<input type="text" name="" required>
```
- 入力値を正規表現で自動チェック
```
<input type="text" name="" pattern="^[0-9A-Za-z]+$">
```
- 最大値・最小値の設定
```
<input type="number" name="" min="5" max="5">-5 - +5
```
- ステップ値
```
<input type="number" name="" step="0.1">
```
- 自動補完（オートコンプリート）
```
<input type="text" name="" autocomplete="on" list="yyy">
<datalist id="yyy">
  <option value="犬">犬</option>
  <option value="猫">猫</option>
  <option value="鳥">鳥</option>
</datalist>
```
- 複数のアイテムを選択・入力
```
<select name="" multiple size="4">
  <option value="dog">犬</option>
  <option value="cat">猫</option>
  <option value="bird">鳥</option>
  <option value="fish">魚</option>
</select>
```
```
<input type="text" name="" list="yyy" multiple>
<datalist id="yyy">
  <option value="犬">犬</option>
  <option value="猫">猫</option>
  <option value="鳥">鳥</option>
</datalist>
```
- データリストを定義
```
<input type="text" name="" autocomplete="on" list="yyy">
<datalist id="yyy">
  <option value="dog">犬</option>
  <option value="cat">猫</option>
  <option value="bird">鳥</option>
</datalist>
```
- フォーム送信時の暗号化キー
```
<keygen name="">
```
- 計算結果
```
<fieldset>
<input type="range" name="" min="0" max="5">
<output name="result" onforminput="value=xxx.value"></output>
</fieldset>
```
- 進捗
```
<progress min="0" max="100" value="75">進捗率75％</progress>
```
- 範囲内の値
```
<meter min="0" max="27" value="10">10/27</meter>
```
- 参考： http://web-dou.com/html/html5_form2.html

## HTML5 で用意された専用入力ボックス
- 検索専用入力欄
```
<input type="search" name="" size="20">
```
- 電話番号専用入力欄
```
<input type="tel" name="" size="12">
```
- URL 専用入力欄
```
<input type="email" name="" size="20">
```
- メールアドレス専用入力欄
```
<input type="email" name="" size="20">
```
- 日時専用入力欄
```
<input type="datetime" name="">
```
- 月専用入力欄
```
<input type="month" name="">
```
- 週専用入力欄
```
<input type="week" name="">
```
- 時間専用入力欄
```
<input type="time" name="">
```
- 日時専用入力欄
```
<input type="datetime-local" name="">
```
- カラー専用入力欄
```
<input type="color" name="">
```
- 数値専用入力欄
```
<input type="number" name="">
```
- 参考： http://web-dou.com/html/html5_form3.html
