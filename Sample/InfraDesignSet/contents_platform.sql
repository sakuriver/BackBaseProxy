
--platform creator or developers
CREATE TABLE developers
( 
  id int(10) NOT NULL PRIMARY KEY, 
  name varchar(255),
  active int(10),
  created_datetime datetime,
  updated_datetime datetime
)
 ENGINE=INNODB;

-- login information
CREATE TABLE developer_login_temp 
(
  developer_id int(10) PRIMARY KEY,
  token_information varchar(255),
  created_datetime datetime,
  updated_datetime datetime
)
ENGINE=INNODB;

-- platform products
CREATE Table develop_products
(
  id int(10) NOT NULL PRIMARY KEY,
  developer_id int(10) NOT NULL,  
  contents_name varchar(255) NOT NULL,
  product_status int(10),
  start_datetime datetime,
  end_datetime datetime,
  created_datetime datetime,
  updated_datetime datetime,
  index range_datetime(start_datetime, end_datetime)
)
ENGINE=INNODB;

-- platform test device
CREATE TABLE test_device
(
  id int(10) NOT NULL PRIMARY KEY,
  developer_id int(10) NOT NULL,  
  download_device_name varchar(255) NOT NULL,
  download_progress int(10),
  start_datetime datetime,
  end_datetime datetime,
  created_datetime datetime,
  updated_datetime datetime
)
ENGINE=INNODB;




 