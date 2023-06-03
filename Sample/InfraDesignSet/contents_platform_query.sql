 

 INSERT INTO developers (id, name, active, created_datetime, updated_datetime  )
 VALUES(2, "nintendo", 1, now(), now());
INSERT INTO developers (id, name, active, created_datetime, updated_datetime  )
 VALUES(3, "square_enix", 1, now(), now());

INSERT INTO develop_products (id, developer_id, contents_name, product_status , created_datetime, updated_datetime )
 VALUES(1, 2  , "mario jump", 1, now(), now());
INSERT INTO develop_products (id, developer_id, contents_name, product_status , created_datetime, updated_datetime )
 VALUES(2, 2  , "pokemon silver", 1, now(), now());
INSERT INTO develop_products (id, developer_id, contents_name, product_status , created_datetime, updated_datetime )
 VALUES(3, 3  , "FF7", 1, now(), now()); 

INSERT INTO test_device (id, developer_id, download_device_name, download_progress)
 VALUES(1, 2 , "ff7 debug team", 100);
INSERT INTO test_device (id, developer_id, download_device_name, download_progress)
 VALUES(2, 2 , "ff7 smart phone team", 100);


#販売業者毎のゲーム一覧を抽出 
select developers.name,develop_products.contents_name,develop_products.product_status
from developers
inner join develop_products on developers.id = develop_products.developer_id;
 
#申請中のゲーム一覧を抽出(管理ツールでの確認機能) 
select developers.name,develop_products.contents_name,develop_products.product_status
from developers
inner join develop_products on developers.id = develop_products.developer_id
where develop_products.product_status = 0;

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
from test_device

