# 財務系システムの用語まとめ
r
## データ種類

### 素材依頼関連

#### 発注書の作成

発注書向けのデータを登録する

発注会社を依頼先一覧から選択をする

プロジェクトデータテーブル

1  プロジェクトid              id               プロジェクトid

2  プロジェクト名称            name            プロジェクトの名称 

3  プロジェクトのステータス     status          プロジェクトのステータス
   1 申請中
   2 開始
   3 運営中

4  プロジェクトリーダー        leaderId        プロジェクトリーダーのid

5  登録日時                   created_date    作成日時

6  更新日時                   udpated_date    更新日時

発注データテーブル

1　発注番号no id                主キー

2  発注会社id contactRequestId     注文依頼先のid 

3  依頼元会社id orderRequestId     依頼元の会社id

4  受領プロジェクトId receiveProjectId 納品物を受け取る業務プロジェクトid

5  発注日     contactRequestDate   発注時の日付

6  件名 note 発注した時の名称

7  支払サイト usance 支払い日数を設定 

8 書類ステータス documentStatus 書類のステータス番号
    ステータス種類
        1 start 作成
        2 上長へ申請済み
        3 発注完了
        4 連絡受け取り済み

9 承認者Id authorizerId       発注承認者のアカウントId

10 横持で個別商品情報
    発注商品番号     contactProductId         発注商品id
    発注時商品単価   contactProductUnitPrice  発注した時の商品単価
    発注時数量       contactProductNumber     発注時に同商品について依頼した数量

11  注文時の消費税率
　　消費税率        taxRate                 消費税の金額計算

12  説明項目
   備考             note                   商品を依頼した時のやり取り時などのメモ


レポートテーブル

1  レポートid id                         総費用等を計算した番号

2  総発注費用

3  運営開始後の売上
