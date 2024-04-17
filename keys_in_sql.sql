create database keys_in_sql;

-->To use that data_base
use keys_in_sql;

create table students(s_roll int,s_name varchar(30),Maths int,phy int,che int);
insert into students values(1,'lovely',40,43,50),(2,'ram',30,60,49),(3,'Liam',40,45,60),(4,'Oliver',40,50,75),(5,'Lucas',79,98,58),(6,'Isabella',80,60,30),(7,'Charlotte',70,49,60),(8,'Benjamin',69,88,48),(9,'Theodore',79,40,60),(10,'Harper',60,30,56);

select * from students;

-->delete table in the database
drop table students;

-->constarints
/*
	NOT NULL 
	UNIQUE
	DEFAULT 
	PRIMARY KEY
	FORIEGN KEY

*/
create table students_PRIMARY_KEY(s_roll int PRIMARY KEY,s_name varchar(30), Maths int,phy int,che int);

alter table students add gender varchar(5);

insert into students_PRIMARY_KEY values(1,'lovely',40,43,50),(2,'ram',30,60,49),(3,'Liam',40,45,60),(4,'Oliver',40,50,75),(5,'Lucas',79,98,58),(6,'Isabella',80,60,30),(7,'Charlotte',70,49,60),(8,'Benjamin',69,88,48),(9,'Theodore',79,40,60),(10,'Harper',60,30,56);

