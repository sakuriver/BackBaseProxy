# 概要(summary)

各種BFFから実行される技術要素などを集めたリポジトリです

# ライセンスについて(license)
GPL（GNU General Public License） です。
各種皆さんが利用して、継承された製品がでることを楽しみにしております。
GPL (GNU General Public License).
We are looking forward to seeing products that will be used by all kinds of people and inherited.


# フォルダ構成(folder)

## サンプル(Sample)

### 説明(description)
quey.sql A summary of the various query-related aspects of the database.
quey.sql データベースの各種クエリー関連について、まとめたもの。


### 環境(Envrioment)

以下のようなオンラインサービスで実行されることが前提のクエリーが一部あります。
https://www.programiz.com/sql/online-compiler/

### ファイル説明(file description)

ddl_sample.sql
テーブル設計図にそったTABLEのCREATETABLE（エディターで動作確認したもの）
CREATETABLE OF TABLE ACCORDING TO THE TABLE BLUEPRINT (OPERATION CONFIRMED IN THE EDITOR)

mysql_base.sql
mysqlベースで確認をする分析関連のクエリーなど製品毎の商品で構文が変更されるような内容を想定
Assuming content such as analysis-related queries that check based on mysql and that the syntax will be changed for each product.

## インフラデザインセット(infraDesignSet)

### 特定インフラセットアップの初期フォーマットイメージ(Initial format image of a specific infrastructure setup)

contents_platform_query.sql
特定コンテンツ販売用サイトのデータ登録と表示用クエリー
Queries for data registration and display of specific content sites

contents_platform.sql
各種ゲームや動画投稿サイトを登録するためのテーブル構造
Table structure for registering various games and video posting sites

query.sql
投稿サイト用の、管理画面のSQLデータベースをそろえた表示用クエリー
Query for displaying the SQL database of the management screen for the posting site

schema.sql
ゲームおよび動画投稿サイトの投稿サイトを遊ぶプレイヤー側と、管理画面側のクエリー
Queries on the side of the player who plays the posting site of the game and video posting site and the management screen side

# 財務関連用Sqlセット(financeSystemSet)

財務系システム関連のSqlフォーマット
Sql formats related to financial systems


### 投稿サイトの画面セット(html)

投稿サイト一連の流れを表す画面遷移イメージhtml
Screen transition image HTML that represents a series of posting sites
