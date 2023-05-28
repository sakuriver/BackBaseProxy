
# mysqlベースの最適化計画を確認するためにテーブル登録とクエリーで名前の検索処理を実施
create table Test(id integer, title varchar(100));
insert into Test(id, title) values(1, "Hello");
select * from Test;
-- Your code here!

Explain SELECT title FROM Test Where title="Hello";