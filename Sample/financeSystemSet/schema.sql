-- project_finance_system
CREATE TABLE projects 
( 
  id int(10) PRIMARY KEY, 
 name varchar(255),
 status int(10),
 leader_id int(10),
 created_date datetime,
 updated_date datetime
);

-- order_requests
CREATE TABLE order_requests 
(
  id int(10) PRIMARY KEY,
  contact_request_id int(10),
  order_request_id int(10),
  receive_project_id int(10),
  contact_request_date datetime,
  note varchar(255),
  authorizer_id int(10),
  contact_product_id_first int(10),
  contact_product_unit_price_first int(10),
  contact_product_number_first int(10),
  contact_product_id_second int(10),
  contact_product_unit_price_second int(10),
  contact_product_number_second int(10),
  contact_product_id_third int(10),
  contact_product_unit_price_third int(10),
  contact_product_number_third int(10),
  tax_rate int(10),
  created_datetime datetime,
  updated_datetime datetime
);
