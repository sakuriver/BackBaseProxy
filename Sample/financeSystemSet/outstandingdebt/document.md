# 本ドキュメントの目的

## プログラム内で利用する債務残高に関する機能を定義すること

### 債務

お金を支払う義務のこと。

#### 関連機能

伝票一覧表示画面。


============
| 伝票種類  | 
============

以下のように想定

仕入........依頼した商品の一覧を確認する場合に利用する。

入金伝票....売掛金の支払いや、クレジットカード入金が発生した際に追加されたレコード情報の一覧を確認するために選択をする。

振替伝票.....経理や総務部で特殊科目で貸借を指定して、登録したものを検索する場合に利用。
使う部署は伝票の科目一覧を見ながらの設定が必要なので、特定部署指定をしていいレベル。

売上伝票.....取引種類が売上固定になっているもの。


### 関連用語まとめ

| No | タイトル | 説明 |
|:-----------|:------------|:------------|
| 1       | 会計伝票 | 売上伝票や会計伝票本体のことを表している。紙やタブレット形式で人間が手作業や選択での記述を想定 |
| 2       | 発注入庫 | 商品が納品されて、自社の在庫の数が増えること。CGのデザインデータ受領等。 |
| 3       | 請求書照合 | 納品ファイルの確認で、資料と受け取ったものが一致しているかを確認 |
| 4       | 消込 | 実際の会計科目が決まったことで、上書きをすること |
| 5       | 消込転記 | 会計科目で消込を実行する機能のこと。 |
| 6       | 会計伝票保留 | 担当者が入力しただけの状態 |
| 7       | 会計伝票未転記 | 担当者が入力完了して、承認者にチェックをもらえた状態 |
| 8       | 会計伝票転記 | 承認者がチェック後、総勘定元帳に記録された状態 |
| 9       | 仕入れ先マスタ | 商品を依頼する先の一覧になっているマスタデータ。素材作成やQA依頼先などが含まれています。 |

