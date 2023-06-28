
 --決済対象のプロジェクトを追加する
INSERT INTO projects (id, name, status, leader_id)
 VALUES(1000, "last fantasy 17", 2, 1);

INSERT INTO projects (id, name, status, leader_id )
 VALUES(2000, " robot operator 3", 2, 1);

--プロジェクト一覧と件数を表示する
select *
from projects
order by id;

select count(*)
from projects;

--特定プロジェクトのレコード情報を取得
select *
from projects
where id = 2000;

--発注書の作成
INSERT INTO order_requests (
id, 
contact_request_id,
order_request_id,
receive_project_id,
note,
authorizer_id, 
contact_product_id_first,
contact_product_unit_price_first,
contact_product_number_first,
contact_product_id_second,
contact_product_unit_price_second,
contact_product_number_second,
contact_product_id_third,
contact_product_unit_price_third,
contact_product_number_third,
tax_rate
  )
 VALUES(1, 100,200,1000,"ラスト冒険 主人公コンテンツモデル3Dデータ発注",100, 
 100,1000000,5,200,2000000,5,200,5,300,10 );

INSERT INTO order_requests (
id, 
contact_request_id,
order_request_id,
receive_project_id,
note,
authorizer_id, 
contact_product_id_first,
contact_product_unit_price_first,
contact_product_number_first,
contact_product_id_second,
contact_product_unit_price_second,
contact_product_number_second,
contact_product_id_third,
contact_product_unit_price_third,
contact_product_number_third,
tax_rate
  )
 VALUES(2, 100,300,2000,"ロボットオペレーション 道具モデル100 ",100, 
 100,1000000,5,200,2000000,5,200,5,300,10 );

--発注書の一覧を取得
select * 
from order_requests;

--プロジェクト名称付きの発注書出力
select projects.name, order_requests.note
from order_requests
inner join projects on projects.id = order_requests.receive_project_id
