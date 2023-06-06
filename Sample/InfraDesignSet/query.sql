#管理画面アカウントを追加する
INSERT INTO admin_user (id, name, grant_type, login_password, updated_datetime )
 VALUES(2, "admin_master", 0, "xqgQ57Fj", now());

#アカウント追加完了後の一覧情報と件数を取得
select *
from admin_user
order by id;

select count(*)
from admin_user;

#マスターデータのバージョン情報を追加する
INSERT INTO master_data_ver (id, version, selected, created_datetime, updated_datetime )
 VALUES(1, "1.00", 0, now(), now());

#マスターデータのバージョン情報の更新バージョンを確認するタイプ
INSERT INTO master_data_ver (id, version, selected, created_datetime, updated_datetime )
 VALUES(2, "1.5", 1, now(), now());

#マスターデータのバージョン情報を取得する 
select *
from master_data_ver;

#管理画面へのログイン確認処理(パスワード忘れた場合)
select *
from admin_user
where id = 1 and login_password = "fdew";

#管理画面へログインできるデータパターン
select *
from admin_user
where id = 2 and login_password = "xqgQ57Fj";

#ログイン中セッションDB情報を追加
INSERT INTO login_tmp (admin_user_id, token_information, created_datetime, updated_datetime )
 VALUES(2, "kX3MNLka", now(), now());

#管理画面へのログインを確認する(別ユーザーのセッションエラー)
select *
from login_tmp
where admin_user_id = 1 and token_information = "kX3MNLka";

#管理画面へのログインを確認する(正常確認完了ケース)
select *
from login_tmp
where admin_user_id = 2 and token_information = "kX3MNLka";

#ポイント商品情報を追加する。
INSERT INTO payment_item (id, name, item_price,  start_datetime, end_datetime, created_datetime, updated_datetime )
 VALUES(1, "通常ポイント100", 100,  now(), now(), now(), now());
INSERT INTO payment_item (id, name, item_price,  start_datetime, end_datetime, created_datetime, updated_datetime )
 VALUES(2, "通常ポイント300", 300,  now(), now(), now(), now());
INSERT INTO payment_item (id, name, item_price,  start_datetime, end_datetime, created_datetime, updated_datetime )
 VALUES(3, "通常ポイント500", 500,  now(), now(), now(), now());
INSERT INTO payment_item (id, name, item_price, start_datetime, end_datetime, created_datetime, updated_datetime )
 VALUES(4, "通常ポイント700+ボーナス100", 500,  now(), now(), now(), now());
INSERT INTO payment_item (id, name, item_price, campaign_start_datetime, campaign_end_datetime, start_datetime, end_datetime, created_datetime, updated_datetime )
 VALUES(5, "通常ポイント700+キャンペーン300 初回購入のみ", 500, now(), now(), now(), now(), now(), now());

#ポイント商品ダイアログを開く（キャンペーンを含める)
select * 
from payment_item;


#ポイント購入時に商品情報を選択する
select * from payment_item 
where id = 4;
