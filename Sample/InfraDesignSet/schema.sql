--admin_serverdb_sample
CREATE TABLE admin_user 
( id int(10)PRIMARY KEY, 
 name varchar(255),
 grant_type int(10))
 ENGINE=INNODB;
 
--player_serverdb_sample
CREATE TABLE player 
( 
  id int(10) NOT NULL PRIMARY KEY, 
  name varchar(255),
  initial_root_id int(10),
  created_datetime datetime,
  updated_datetime datetime
)
ENGINE=INNODB;
CREATE Table player_purchase
(
  player_id int(10) NOT NULL,
  item_id int(10) NOT NULL, 
  purchase_datetime datetime,
  created_datetime datetime,
  updated_datetime datetime,
  PRIMARY KEY(player_id, item_id)
)
ENGINE=INNODB;

CREATE TABLE master_data_ver
( 
  id int(10) NOT NULL PRIMARY KEY, 
  version varchar(255),
  selected int(10),
  created_datetime datetime,
  updated_datetime datetime
)
 ENGINE=INNODB;
CREATE Table store
(
  id int(10) NOT NULL PRIMARY KEY,
  name varchar(255) NOT NULL,
  start_datetime datetime,
  end_datetime datetime,
  created_datetime datetime,
  updated_datetime datetime,
  index range_datetime(start_datetime, end_datetime)
)
ENGINE=INNODB;


 

 