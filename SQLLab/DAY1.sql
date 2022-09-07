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

-- auto_increment 自動增加主鍵值(可中途加入自訂 ID，但不建議)
create table my_products2(
product_id int primary key auto_increment,
product_name varchar(50),
price int
);
desc my_products2;
insert into my_products2(product_name, price)
values
('Apple', 1000),
('Google', 2000);
select * from my_products2;

-- 自訂主鍵初始值(新增資料前就要設定)
create table my_products3(
product_id int primary key auto_increment,
product_name varchar(50),
price int
);
alter table my_products3 auto_increment = 100001;
insert into my_products3(product_name, price)
values
('Apple', 1000),
('Google', 2000);
select * from my_products3;

create table my_food( -- 實作課題
food_id int primary key auto_increment,
food_name varchar(50),
food_location varchar(50),
food_price int
);
insert into my_food(food_name, food_location, food_price)
values
('自帶便當', '家裡', 0),
('sukiya', '復興南路二段', 109),
('', '', );
select * from my_food;

create table employee(
emp_id int not null auto_increment,
emp_name varchar(50),
emp_department varchar(50),
emp_age int,
primary key(emp_id)
);
insert into employee(emp_name, emp_department, emp_age)
values('Tony','HR', 35),
('Amy','RD', 30),
('Jenny', 'Sells',28),
('Tom','RD',22),
('Betty','HR',25),
('John','Account',36),
('Mary','Sells', 22);
select * from employee;
select emp_department from employee; -- 只選擇查看某一欄資料
select emp_age, emp_name, emp_department from employee; -- 可以更改欄位顯示的順序，但不影響表格內容
-- where 有條件查詢
select * from employee where emp_age = 22;
select * from employee where emp_age <= 22;
select * from employee where emp_name = 'TOM';
select * from employee where emp_name = 'MarY' and emp_age < 20; -- 找不到 Mary
select * from employee where emp_name = 'MarY' or emp_age < 20; -- 找得到 Mary
select * from employee where binary emp_name = 'TOM'; -- 限定要分辨大小寫
select emp_name, emp_department from employee;
select emp_id from employee;
select emp_name, emp_age from employee where emp_department = 'HR'; -- 查詢 HR 的部門，只需要姓名和年齡欄位
select emp_name as Names, emp_department as Department from employee; -- Aliases 別名
select emp_name as 'Employee names', emp_department as Department from employee; -- 別名有空格時，要加單引號
-- Update 更新資料
select * from employee;
update employee set emp_department = 'Accounting' where emp_department = 'Account';
update employee set emp_department = 'Accounting' where emp_name = 'Mary';
select * from employee where emp_name = 'Amy'; -- 先找到目的資料，再進行更新
update employee set emp_age = 31 where emp_name = 'Amy';
select * from employee where emp_name = 'John';
update employee set emp_name = 'Johnny' where emp_name = 'John';
select * from employee where emp_name = 'Johnny';
-- Delete 刪除資料
select * from employee where emp_name = 'Johnny'; -- 先找到目的資料，再進行刪除
delete from employee where emp_name = 'Johnny';