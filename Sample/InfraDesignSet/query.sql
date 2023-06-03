 

INSERT INTO master_data_ver (id, version, selected, created_datetime, updated_datetime )
 VALUES(1, "1.00", 0, now(), now());
INSERT INTO master_data_ver (id, version, selected, created_datetime, updated_datetime )
 VALUES(2, "1.5", 1, now(), now());

 
select *
from master_data_ver;
 