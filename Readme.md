# 概要

各種BFFから実行される技術要素などを集めたリポジトリです



# フォルダ構成


## Sample
quey.sql データベースの各種クエリー関連について、まとめたものになります。

以下のようなオンラインサービスで実行されることが前提のクエリーが一部あります。
https://www.programiz.com/sql/online-compiler/

ddl_sample.sql
テーブル設計図にそったTABLEのCREATETABLE（エディターで動作確認したもの）

mysql_base.sql
mysqlベースで確認をする分析関連のクエリーなど製品毎の商品で
構文が変更されるような内容を想定

## infraDesignSet

特定インフラセットアップの初期フォーマットイメージ

contents_platform_query.sql
特定コンテンツ販売用サイトのデータ登録と表示用クエリー

contents_platform.sql
各種ゲームや動画投稿サイトを登録するためのテーブル構造

query.sql
投稿サイト用の、管理画面のSQLデータベースをそろえた表示用クエリー

schema.sql
ゲームおよび動画投稿サイトの投稿サイトを遊ぶプレイヤー側と、管理画面側のクエリー

### html
投稿サイト一連の流れを表す画面遷移イメージhtml


