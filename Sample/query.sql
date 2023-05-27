#joinでのデータ抽出 テーブル例
SELECT order_id, item, amount, customers.first_name
FROM Orders
inner join Customers on Orders.customer_id = Customers.customer_id
limit 20;