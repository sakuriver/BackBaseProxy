
#販売業者を追加
 INSERT INTO developers (id, name, active, created_datetime, updated_datetime  )
 VALUES(2, "nintendo", 1, now(), now());
INSERT INTO developers (id, name, active, created_datetime, updated_datetime  )
 VALUES(3, "square_enix", 1, now(), now());

#販売業者側でのゲーム登録フォーム画面を追加
INSERT INTO develop_products (id, developer_id, contents_name, product_status , created_datetime, updated_datetime )
 VALUES(1, 2  , "mario jump", 1, now(), now());

#登録実行確認
select count(*) 
from develop_products;

#販売業者側でのゲーム登録フォーム画面を追加
INSERT INTO develop_products (id, developer_id, contents_name, product_status , created_datetime, updated_datetime )
 VALUES(2, 2  , "pokemon silver", 1, now(), now());

#登録実行確認
select count(*) 
from develop_products;

#販売業者側でのゲーム登録フォーム画面を追加
INSERT INTO develop_products (id, developer_id, contents_name, product_status , created_datetime, updated_datetime )
 VALUES(3, 3  , "FF7", 1, now(), now()); 

#商品の件数を取得
select count(*) from develop_products;

#端末情報一覧を追加
INSERT INTO test_device (id, developer_id, download_device_name, download_progress)
 VALUES(1, 2 , "ff7 debug team", 100);
INSERT INTO test_device (id, developer_id, download_device_name, download_progress)
 VALUES(2, 2 , "ff7 smart phone team", 100);

#端末情報一覧のデータ件数を追加
select count(*) from test_device;

#ログイン状態を追加
INSERT INTO developer_login_temp ( developer_id, token_information, created_datetime, updated_datetime)
 VALUES( 2 , "SS28N2v4", now(), now());

#申請画面のログイン状況確認
select * 
from developer_login_temp 
where developer_id = 1 and token_information = "";

#販売業者毎のゲーム一覧を抽出 
select developers.name,develop_products.contents_name,develop_products.product_status
from developers
inner join develop_products on developers.id = develop_products.developer_id;
 
#申請中のゲーム一覧を抽出(管理ツールでの確認機能) 
select developers.name,develop_products.contents_name,develop_products.product_status
from developers
inner join develop_products on developers.id = develop_products.developer_id
where develop_products.product_status = 0;

#公開中のゲーム一覧を抽出(アプリ向けの一覧データ)
select * 
from  develop_products 
where develop_products.product_status = 1
limit 0, 20;

#申請用画面のトップページ情報
select *
from developers
where id = 2;

#指定したゲームの詳細情報（プレイ前情報)
select *
from develop_products
where id = 2;

#開発中のデバッグ用の端末情報一覧確認画面
select id,developer_id,download_device_name,download_progress
from test_device;

#特定端末の詳細画面
select *
from test_device
where id = 2;

