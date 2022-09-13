create database test_tran;
use test_tran;

create table accounts(
id int primary key auto_increment,
username varchar(50) not null unique,
balance bigint not null
);
insert into accounts(username, balance)
values('Amy', 10000), ('Tom', 500);

select * from accounts;

-- transation 交易
set @@autocommit = off; -- 明顯交易模式

start transaction;

update accounts set balance = balance - 50 where username = 'Tom';
update accounts set balance = balance + 50 where username = 'Amy';

commit;

select * from accounts;

set @@autocommit = on;

create database test_union;
use test_union;

create table TP_shop(
id int primary key auto_increment,
phone_name varchar(50)
);
insert into TP_shop(phone_name)
values('i8'), ('i12'), ('i13'), ('i13 pro');

create table KH_shop(
id int primary key auto_increment,
phone_name varchar(50)
);
insert into KH_shop(phone_name)
values('i7'), ('i13'), ('i13'), ('i14');

-- 垂直整合(重複的資料只會留一個)
select phone_name from TP_shop
union
select phone_name from KH_shop;

-- 垂直整合全部(重複的都會算)
select phone_name from TP_shop
union all
select phone_name from KH_shop;
