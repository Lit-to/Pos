# こんな辺境によくきたね
座標を管理するだけのpyファイルとデータパックを設置するためだけのレポジトリです。
# 目次
- [こんな辺境によくきたね](#こんな辺境によくきたね)
- [目次](#目次)
- [pyの概要](#pyの概要)
  - [実装環境](#実装環境)
  - [つかいかた](#つかいかた)
- [データパックの概要](#データパックの概要)
  - [実装環境](#実装環境-1)
  - [つかいかた](#つかいかた-1)
    - [アマスタを特定の座標にばらまく](#アマスタを特定の座標にばらまく)
    - [アマスタの位置にブロックがあるかを確認する。](#アマスタの位置にブロックがあるかを確認する)


# pyの概要
intで書いた座標を平方配列にしてくれます。
## 実装環境
```
windows10
Python 3.9.6
```
## つかいかた
1.  x y zのかたちで``in.txt``に記述します。
2.  ``pos.py``を実行します。
3.  out.txtに配列が出力されます。
すべて``x.0``に丸めこまれます。
inファイルはデフォルトが実例になっています。
挙動を確かめたい方は動かしてみてください。
# データパックの概要
## 実装環境
```
minecraft v1.18.2
```

## つかいかた
使用可能な関数は2種類あります。
### アマスタを特定の座標にばらまく
1.  storage ``pos:``のパス``in``にリスト形式で座標を入力します。
    1.  e.g.:```[[34.0,17.0,3.0],[42.0,59.0,39,0]]```
2.  [``function pos:set``](pos/data/pos/functions/set.mcfunction)を実行します。
3.  上で入力した座標に``{Marker:1b,Invisible:1b,Invulnerable:1b,Tags:["pos"]}``のnbtが追加されたアマスタが設置されます。
4.  召喚させたアマスタの数をstorage ``pos: out``に出力します。

### アマスタの位置にブロックがあるかを確認する。
上記で生成させたように、posというタグを持つアマスタについて調べることが出来ます。
[``function pos:block``](pos/data/pos/functions/block.mcfunction)を実行すると以下の動作をします。
-   [#pos:check](pos/data/pos/tags/blocks/check.json)のブロックかチェックします。
-   失敗したアマスタの座標をチャットに赤文字で出力します。
-   全ての処理終了後に、成功したアマスタの数と、失敗したアマスタの座標をstorage ``pos: out``に出力します。
