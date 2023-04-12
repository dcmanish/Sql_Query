create table cust(id number(10),ename varchar(20),gender varchar2(10),prof varchar2(20));

insert into cust values(11,'manish','Male','engineer');
select * from cust;
select * from cust where prof='student';
select * from cust where gender is null;
select * from cust where gender is not null;

insert into cust (ename) values('raja');
--inserting null values other way
insert into cust values(15,'','','');

--select * from cust where gender =''; not work
--select * from cust where gender ='null'; not work consider string

--update query

update cust
set id =16
where ename='raja';

--add column

alter table cust add (salary number (10));

--update salary 

update cust
set salary='5000';

update cust
set ename='max' , salary=5000
where id=15;