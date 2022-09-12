create database photo_app;
use photo_app;
select database(); -- 查看目前所在資料庫

create table users(
id int primary key auto_increment,
u_name varchar(50)
);
desc users;
insert into users(u_name)
values
('阿明'),
('Tom'),
('Sara'),
('小美');
select * from users;

create table photos(
id int primary key auto_increment,
url varchar(200),
user_id int,
foreign key (user_id) references users(id)
);
desc photos;
insert into photos(url, user_id)
values
('http://465542', 3),
('http://342546', 3),
('http://445643', 3),
('http://187502', 1),
('http://545643', 2),
('http://321874', 4);
select * from photos;

-- insert into photos(url, user_id)
-- values
-- ('http://465462', 888); 因為外來鍵的約束，無法塞入不存在的資料
-- insert into photos(url, user_id)
-- values
-- ('http://465542', null); 可以放 null 值，不想將照片指定使用者

-- 刪除模式預設: restrict: 刪除大表時，若小表有對應資料，會無法刪除，跳出錯誤訊息

-- 刪除模式一: cascade 級聯模式: 需在建立表格時寫入選擇此模式
-- foreign key (user_id) references users(id) on delete cascade

-- 刪除模式二: set null: 需在建立表格時寫入選擇此模式
-- foreign key (user_id) references users(id) on delete set null
