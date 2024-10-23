use cimage
--Constraints
create table customer(
ID int primary key,
cname varchar(30) not null,
address varchar(100) null,
city varchar(30) default 'Patna',
email varchar(55) unique,
age int check(age>18)
);
sp_help customer
create table orders(
ID int primary key,
cid int references customer(ID),
orderDate date
);
sp_help orders
create table stu(
ID int primary key,
name varchar(30) not null,
city varchar(30) default 'Patna')
insert into stu values(1,'Aman','Goa')
INSERT INTO STU(ID,NAME) VALUES(2,'SUMAN')
select * from stu --display all records of 'stu' table
-- display only city of stu table
SELECT CITY FROM STU
-- DISPLAY ID AND CITY OF STU TABLE
SELECT ID,CITY FROM STU