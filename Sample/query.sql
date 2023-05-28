#joinでのデータ抽出 テーブル例
SELECT order_id, item, amount, customers.first_name
FROM Orders
inner join Customers on Orders.customer_id = Customers.customer_id
limit 20;

#特定購入金額以上の注文情報一覧を抽出 テーブル例
SELECT order_id, item, amount
FROM Orders
Where amount >= 400
order by order_id asc;

#注文情報で顧客毎のデータをまとめた金額情報の抽出
SELECT customer_id, sum(Orders.amount)
FROM Orders
group by Orders.customer_id;


#配送データについて、エラーが出ていたレコードを手動対応後にコマンド側で結果が出るように

DELETE FROM Shippings
  WHERE shipping_id = 3;
  
select * from shippings;

#作業領域テーブルを用意して。DB登録後に結果を確認

insert into event_temp1 values(
  1000,
  "歓迎会",
  2023-06-10
);

select * from event_temp1;

#検索で頻度高く利用されているカラムがDB上キーとして活用できているかを確認

Explain SELECT customer_id
FROM Orders
Where customer_id = 4;


#idルール変更後に、変更したルールの更新情報を動作確認

Update Orders set order_id = order_id + 1000;
select * from Orders;


#ゲーム内のアイテムデータを並び替えて、現在のトップデータを抽出する
CREATE TABLE GameItem (
   Id int not null,
   Name    varchar(55) NOT null,
   DataValue int   
);
