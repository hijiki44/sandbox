# DOCTYPE 宣言
どのバージョンの HTML 言語で作成されているのかを明示するためのもので、HTML 文書の冒頭に記述する

## 主な HTML のバージョン
- HTML4.01
    - Strict
    ```
    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
    ```
    - Transitional
    ```
    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    ```
    - Frameset
    ```
    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
    ```
- XHTML1.0
    - Strict
    ```
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
    ```
    - Transitional
    ```
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    ```
    - Frameset
    ```
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
    ```
- HTML5  
    ```
    <!DOCTYPE html>
    ```

### Strict と Transitional と Frameset
- Strict
    - 言語仕様に厳密に従って記述する必要がある（違反すると文法チェック時にエラーになる）
    - 非推奨要素、非推奨属性、フレームが使用できない
- Transitional
    - HTML4.01 や XHTML1.0 の仕様に定められていない古い HTML の文法で記述してもエラーにならない
    - 非推奨要素、非推奨属性は使用できるが、フレームは仕様できない
- Frameset
    - 非推奨要素、非推奨属性、フレームの全てが使用できる

# HTML と XHTML
- HTML
    - 言語仕様があいまい
        - タグや属性の大文字／小文字： どちらでも可
        - 終了タグの省略： 省略しても OK
        - 属性の引用符（" "）の省略： 省略しても OK
        - 属性名と値が同じ場合の属性名の省略： 省略しても OK
        - 空要素の扱い： スラッシュなし　<br>
- XHTML
    - 言語仕様が厳密
        - タグや属性の大文字／小文字： 小文字のみ
        - 終了タグの省略： 省略は NG
        - 属性の引用符（" "）の省略： 省略は NG
        - 属性名と値が同じ場合の属性名の省略： 省略は NG
        - 空要素の扱い： スラッシュあり　<br />
