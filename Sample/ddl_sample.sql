

CREATE TABLE event_data (
   EventId int not null,
   Name    varchar(55) NOT null,
   StartDateTime date
);


CREATE TABLE GameItem (
   Id int not null,
   Name    varchar(55) NOT null,
   DataValue int   
);