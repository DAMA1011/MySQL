show databases;
create database MyShop;
use myshop;
use MyShop;
drop database myshop;
-- int(-2147483648~2147483647)
select true, false, true, true, FaLsE;

select database(); -- 查看目前所在資料庫

create table members(
memberID varchar(50),
memberAge int
);
show tables; -- 顯示表格
show columns from members; -- 顯示欄位，寫法一
desc members; -- 顯示欄位，寫法二
describe members; -- 顯示欄位，寫法三

create table members2(
memberID int,
memberName varchar(50),
memberLocation varchar(50),
memberOrder tinyint
);
show tables;
desc members2;
drop table members2; -- 刪除表格
insert into members2(memberID, memberName, memberLocation, memberOrder)
values
(1001, '小明', '東京', 3),
(1002, '小花', '台中', 5),
(1003, 'Amy', 'USA', 8);
select * from members2; -- 查看表格內資料

create table phone_products(
product_name varchar(50),
brand varchar(50),
price int
);
show tables;
desc phone_products;
insert into phone_products(product_name, brand, price)
values
('IPhone 12', 'Apple', 19900),
('Pixel 5', 'Google', 18900),
('Galaxy s21', 'Samsung', 19800);
select * from phone_products;

create table phone_products2(
product_name varchar(50) not null, -- null 為一個預設值，不是 0，也不是空字串
brand varchar(50) not null,
price int
);
desc phone_products2;
insert into phone_products2(product_name)
values
('IPhone 12'); -- 發生錯誤，沒有輸入 brand 資料，因為 brand 為 not null

create table phone_products3(
product_name varchar(50) not null default 'unnamed', -- 自訂預設值內容
brand varchar(50) not null default 'not sure',
price int default 0
);
desc phone_products3;
insert into phone_products3(product_name)
values
('IPhone 12'); -- 沒輸入的部分，用預設值顯示
select * from phone_products3;

-- 不含 not null 的 default(不建議這樣設計)
create table phone_products4(
product_name varchar(50) default 'unnamed', -- 自訂預設值內容
brand varchar(50) default 'not sure',
price int default 0
);
insert into phone_products4(product_name, brand)
values
(null, 'Apple'),
(null, 'Google');
select * from phone_products4;

-- Primary key 主鍵(同樣的 PRI 不能重複輸入)
create table my_products(
product_id int primary key,
product_name varchar(50),
price int
);
desc my_products;
insert into my_products(product_id, product_name, price)
values
(1001, 'I13', 19900),
(1002, 'I13', 19900);
select * from my_products;

