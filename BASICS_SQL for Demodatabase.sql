-->DDL
-->Creating the data base 
CREATE DATABASE Demodatabase;

-->To use that data_base
use Demodatabase;

-->Create table in the database 
create table students
(
    s_roll int,
    s_name varchar(30),
    Maths int,
    phy int,
    che int
);

-->remove all data in the table in the database
truncate table students;

-->add data to the perticular column in the table
insert into students
    (gender)
values('m')
;

-->delete perticular column in the table
alter table students drop column gender ;

-->add the column in the table
alter table students add gender varchar(5);

-->delete table in the database
drop table students;

--DML
--> insert data into the table
insert into students
values(1, 'lovely', 40, 43, 50),
    (2, 'ram', 30, 60, 49),
    (3, 'Liam', 40, 45, 60),
    (4, 'Oliver', 40, 50, 75),
    (5, 'Lucas', 79, 98, 58),
    (6, 'Isabella', 80, 60, 30),
    (7, 'Charlotte', 70, 49, 60),
    (8, 'Benjamin', 69, 88, 48),
    (9, 'Theodore', 79, 40, 60),
    (10, 'Harper', 60, 30, 56);

-->Edit the perticular data in the table
update students set s_name='Ram' where s_name='Ramesh';

update students set gender='m' where s_roll=3;

update students set gender='f' where s_roll=4 or s_roll=5;
-->delete perticular data in the table 
delete students where s_roll=2;


-->DQL
-->display the data of the table
select *
from students;



----------------
--aggrigations
--------------------

-- SUM,MIN,MAX,COUNT,AVG

Select sum(maths) as totalmarks
from students
;

select max(maths) as max_marks
from students;

select min(maths) as min_marks
from students;

select count(s_roll) as no_of_members
from students;

select avg(maths) as average_of_maths, AVG(phy) as average_of_phy, AVG(che) average_of_che
from students
--------
--clause 
------
-- where,having,group by,order by,top

-->where
select *
from students
where s_roll>=2;

-->group by
select s_name, AVG(maths) as maths, avg(phy) as phy , AVG(che) as che
from students
group by s_name;

-->roder by 
select *
from students
order by s_roll desc;

-->top
select top(1)
    *
from students
order by s_roll desc;

-->having
select s_name , sum(maths)   as sum_of_maths
from students
group by s_name
having sum(maths)>45;

-->exection flow in the SQL comands 
/*
from
where
group by
having 
order by 
top
select
*/

------------------------------------------------
--comparision operations
-------------------------------
-->=,<>,<,>
-->"="
select *
from students
where maths=40;
-->"<>" 'not equal to'
select *
from students
where maths<>40;
-->">"
select *
from students
where maths>40;
-->"<="
select *
from students
where maths<=50;

---------------------------
--logical operators
-------------------------
--AND,OR,NOT 

--AND
Select *
from students
where maths=30 and phy=60;

--OR
Select *
from students
where maths=30 OR phy=50;

--NOT
Select *
from students
where NOT maths=30;

-----------------------------
--RANGE BASED FILTER 
-----------------------------
--BETWEEN,NOT BETWEEN,IN,NOT IN,LIKE

--BETWEEN
Select *
from students
where s_roll between 1 and 3;

--NOT BETWEEN
Select *
from students
where s_roll not between 1 and 3;

--IN
Select *
from students
where s_roll in(1,4,5);

--NOT IN
Select *
from students
where s_roll not in(1,4,5);

--LIKE
Select *
from students
where S_NAME LIKE 'r%'
;

Select *
from students
where S_NAME LIKE '%li%';

Select *
from students
where S_NAME LIKE '%a';

