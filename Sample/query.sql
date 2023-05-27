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