
#content developers add database record
 INSERT INTO developers (id, name, active, created_datetime, updated_datetime  )
 VALUES(2, "nintendo", 1, now(), now());
INSERT INTO developers (id, name, active, created_datetime, updated_datetime  )
 VALUES(3, "square_enix", 1, now(), now());

#content developers add develop form append
INSERT INTO develop_products (id, developer_id, contents_name, product_status , created_datetime, updated_datetime )
 VALUES(1, 2  , "mario jump", 1, now(), now());

#developer product record check
select count(*) 
from develop_products;

#developer product add record two
INSERT INTO develop_products (id, developer_id, contents_name, product_status , created_datetime, updated_datetime )
 VALUES(2, 2  , "pokemon silver", 1, now(), now());

#developer product record check
select count(*) 
from develop_products;

#developer product add record two
INSERT INTO develop_products (id, developer_id, contents_name, product_status , created_datetime, updated_datetime )
 VALUES(3, 3  , "FF7", 1, now(), now()); 

#developer product record check
select count(*) from develop_products;

#device information add 
INSERT INTO test_device (id, developer_id, download_device_name, download_progress)
 VALUES(1, 2 , "ff7 debug team", 100);
INSERT INTO test_device (id, developer_id, download_device_name, download_progress)
 VALUES(2, 2 , "ff7 smart phone team", 100);

#device information add record count
select count(*) from test_device;

#developer login information
INSERT INTO developer_login_temp ( developer_id, token_information, created_datetime, updated_datetime)
 VALUES( 2 , "SS28N2v4", now(), now());

#developer list check
select * 
from developer_login_temp 
where developer_id = 1 and token_information = "";

#developer product list get 
select developers.name,develop_products.contents_name,develop_products.product_status
from developers
inner join develop_products on developers.id = develop_products.developer_id;
 
#developer cms query 
select developers.name,develop_products.contents_name,develop_products.product_status
from developers
inner join develop_products on developers.id = develop_products.developer_id
where develop_products.product_status = 0;

#develop public product query 
select * 
from  develop_products 
where develop_products.product_status = 1
limit 0, 20;

#developer check top page query
select *
from developers
where id = 2;

#product detail informatioin query
select *
from develop_products
where id = 2;

#test_device list get query
select id,developer_id,download_device_name,download_progress
from test_device;

#test_device list
select *
from test_device
where id = 2;

