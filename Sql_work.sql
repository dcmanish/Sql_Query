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
set ename='max' , salary=7000
where id=15;
 
-- update salary with null values

update cust
set salary =''
where ename='max';

update cust 
set salary = 16000
where salary is null;

delete from cust where salary ='16000';

describe cust;
alter table cust add (bonus number (10));

select (salary+bonus) from cust;

select (salary+bonus) total  from cust;

select cust.*,(salary-bonus) total  from cust;

select cust.*,(salary*bonus) total  from cust;

select cust.*,(salary/bonus) total  from cust where gender = 'male';

select *from cust where bonus>50;

select *from cust where bonus<=50;

select *from cust where bonus!=50;

--between

select * from cust where bonus between 50 and 100;

--not between

select * from cust where bonus not  between 60 and 100;

--in

select * from cust where salary in 5000;

select * from cust where ename in ('amit','sujit');

--not in

select * from cust where ename not in ('amit','sujit');

--concatination ||


select ename||'__hehe__'||prof from cust;


--logical operator

--and or not

select * from cust where bonus=50 and salary =5000;

select * from cust where salary is null or bonus=60;

select * from cust where bonus !=50;


--like

select * from cust where ename like '%ish';

select * from cust where ename like '_m%';

--constraints
--primary key 
--unique 
--not null
--unique
--default

--agreegate function
--min max sum count
select max(salary) from cust;
select max(bonus) from cust;
select min(bonus) from cust;

select count(bonus) from cust;
select count(*) from cust;

select * from cust;

select distinct(bonus) from cust;

select count(distinct(bonus)) from cust;

select count (bonus) from cust;
select count (*) from cust;



--scalar functions
--
--initcap
--lower 
--upper
--length
--substr

select upper('manish') from dual;
select lower('manish') from dual;
select substr('manish',1,4) from dual;
select initcap('manish') from dual;
select length('manish') from dual;
select instr('manish','i',1,1) from dual;

select instr('manishisis','i',-1,1) from dual;

--dual is virtual table

--Date Function 

--next_day
--last_day
--sysdate
--systimestamp
--to_date

select sysdate from dual;

select to_date('2020-12-04','yyyy-dd-mm') from dual;















