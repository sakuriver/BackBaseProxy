-- base_spot_data
CREATE TABLE base_spot_data 
( 
  id varchar(255) PRIMARY KEY, 
  app_id int(10), 
  body varchar(255),

  name varchar(255),
  body varchar(255),
 created_datetime datetime,
 updated_datetime datetime
)
ENGINE=INNODB;

-- application_log_data
CREATE TABLE base_log_data
( 
  id varchar(255) PRIMARY KEY, 
  app_id int(10), 
  created_datetime datetime,
  updated_datetime datetime
)
ENGINE=INNODB;

