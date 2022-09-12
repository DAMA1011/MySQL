create database photo_app2;
use photo_app2;
select database();

CREATE TABLE users(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(50)
);

INSERT INTO users (username) 
VALUE
('比爾蓋茲'),
('巴菲特'),
('伊隆馬斯克'),
('普丁'),
('拜登');
 
CREATE TABLE photos (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  url VARCHAR(200),
  user_id INT,
  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

INSERT INTO photos (url, user_id)
VALUES
('https://somecat.com', 3),
('https://doggy.net', 5),
('https://kailyn.name', 3),
('http://marjolaine.name', 1),
('http://chet.com', 5),
('http://mac.org', 2),
('https://meredith.net', 4),
('http://iosgood.net', 4),
('http://dayne.com', 4),
('http://colten.net', 2),
('https://adelbert.biz', 5),
('http://kolby.org', 1),
('https://deon.biz', 2),
('https://trueisgood.com', 5),
('http://johnson.info', 1),
('https://tony.net', 2),
('https://tyrique.info', 4),
('http://goofy.info', 5),
('https://elonmusk.name', 2),
('http://postmangood.com', 3);
 
CREATE TABLE comments (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  contents VARCHAR(240),
  user_id INT,
  photo_id INT,
  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
  FOREIGN KEY (photo_id) REFERENCES photos(id) ON DELETE CASCADE
);

INSERT INTO comments (contents, user_id, photo_id)
VALUES
('Quo velit iusto ducimus quos a incidunt nesciunt facilis.', 2, 4),
('Non est totam.', 5, 5),
('Fuga et iste beatae.', 3, 3),
('Molestias tempore est.', 1, 5),
('Est voluptatum voluptatem voluptatem est ullam quod quia in.', 1, 5),
('Aut et similique porro ullam.', 1, 3),
('Fugiat cupiditate consequatur sit magni at non ad omnis.', 1, 2),
('Accusantium illo maiores et sed maiores quod natus.', 2, 5),
('Perferendis cumque eligendi.', 1, 2),
('Nihil quo voluptatem placeat.', 5, 5),
('Rerum dolor sunt sint.', 5, 2),
('Id corrupti tenetur similique reprehenderit qui sint qui nulla tenetur.', 2, 1),
('Maiores quo quia.', 1, 5),
('Culpa perferendis qui perferendis eligendi officia neque ex.', 1, 4),
('Reprehenderit voluptates rerum qui veritatis ut.', 1, 1),
('Aut ipsum porro deserunt maiores sit.', 5, 3),
('Aut qui eum eos soluta pariatur.', 1, 1),
('Praesentium tempora rerum necessitatibus aut.', 4, 3),
('Magni error voluptas veniam ipsum enim.', 4, 2),
('Et maiores libero quod aliquam sit voluptas.', 2, 3),
('Eius ab occaecati quae eos aut enim rem.', 5, 4),
('Et sit occaecati.', 4, 3),
('Illum omnis et excepturi totam eum omnis.', 1, 5),
('Nemo nihil rerum alias vel.', 5, 1),
('Voluptas ab eius.', 5, 1),
('Dolor soluta quisquam voluptatibus delectus.', 3, 5),
('Consequatur neque beatae.', 4, 5),
('Aliquid vel voluptatem.', 4, 5),
('Maiores nulla ea non autem.', 4, 5),
('Enim doloremque delectus.', 1, 4),
('Facere vel assumenda.', 2, 5),
('Fugiat dignissimos dolorum iusto fugit voluptas et.', 2, 1),
('Sed cumque in et.', 1, 3),
('Doloribus temporibus hic eveniet temporibus corrupti et voluptatem et sint.', 5, 4),
('Quia dolorem officia explicabo quae.', 3, 1),
('Ullam ad laborum totam veniam.', 1, 2),
('Et rerum voluptas et corporis rem in hic.', 2, 3),
('Tempora quas facere.', 3, 1),
('Rem autem corporis earum necessitatibus dolores explicabo iste quo.', 5, 5),
('Animi aperiam repellendus in aut eum consequatur quos.', 1, 2),
('Enim esse magni.', 4, 3),
('Saepe cumque qui pariatur.', 4, 4),
('Sit dolorem ipsam nisi.', 4, 1),
('Dolorem veniam nisi quidem.', 2, 5),
('Porro illum perferendis nemo libero voluptatibus vel.', 3, 3),
('Dicta enim rerum culpa a quo molestiae nam repudiandae at.', 2, 4),
('Consequatur magnam autem voluptas deserunt.', 5, 1),
('Incidunt cum delectus sunt tenetur et.', 4, 3),
('Non vel eveniet sed molestiae tempora.', 2, 1),
('Ad placeat repellat et veniam ea asperiores.', 5, 1),
('Eum aut magni sint.', 3, 1),
('Aperiam voluptates quis velit explicabo ipsam vero eum.', 1, 3),
('Error nesciunt blanditiis quae quis et tempora velit repellat sint.', 2, 4),
('Blanditiis saepe dolorem enim eos sed ea.', 1, 2),
('Ab veritatis est.', 2, 2),
('Vitae voluptatem voluptates vel nam.', 3, 1),
('Neque aspernatur est non ad vitae nisi ut nobis enim.', 4, 3),
('Debitis ut amet.', 4, 2),
('Pariatur beatae nihil cum molestiae provident vel.', 4, 4),
('Aperiam sunt aliquam illum impedit.', 1, 4),
('Aut laudantium necessitatibus harum eaque.', 5, 3),
('Debitis voluptatum nesciunt quisquam voluptatibus fugiat nostrum sed dolore quasi.', 3, 2),
('Praesentium velit voluptatem distinctio ut voluptatum at aut.', 2, 2),
('Voluptates nihil voluptatum quia maiores dolorum molestias occaecati.', 1, 4),
('Quisquam modi labore.', 3, 2),
('Fugit quia perferendis magni doloremque dicta officia dignissimos ut necessitatibus.', 1, 4),
('Tempora ipsam aut placeat ducimus ut exercitationem quis provident.', 5, 3),
('Expedita ducimus cum quibusdam.', 5, 1),
('In voluptates doloribus aut ut libero possimus adipisci iste.', 3, 2),
('Sit qui est sed accusantium quidem id voluptatum id.', 1, 5),
('Libero eius quo consequatur laudantium reiciendis reiciendis aliquid nemo.', 1, 2),
('Officia qui reprehenderit ut accusamus qui voluptatum at.', 2, 2),
('Ad similique quo.', 4, 1),
('Commodi culpa aut nobis qui illum deserunt reiciendis.', 2, 3),
('Tenetur quam aut rerum doloribus est ipsa autem.', 4, 2),
('Est accusamus aut nisi sit aut id non natus assumenda.', 2, 4),
('Et sit et vel quos recusandae quo qui.', 1, 3),
('Velit nihil voluptatem et sed.', 4, 4),
('Sunt vitae expedita fugiat occaecati.', 1, 3),
('Consequatur quod et ipsam in dolorem.', 4, 2),
('Magnam voluptatum molestias vitae voluptatibus beatae nostrum sunt.', 3, 5),
('Alias praesentium ut voluptatem alias praesentium tempora voluptas debitis.', 2, 5),
('Ipsam cumque aut consectetur mollitia vel quod voluptates provident suscipit.', 3, 5),
('Ad dignissimos quia aut commodi vel ut nisi.', 3, 3),
('Fugit ut architecto doloremque neque quis.', 4, 5),
('Repudiandae et voluptas aut in excepturi.', 5, 3),
('Aperiam voluptatem animi.', 5, 1),
('Et mollitia vel soluta fugiat.', 4, 1),
('Ut nemo voluptas voluptatem voluptas.', 5, 2),
('At aut quidem voluptatibus rem.', 5, 1),
('Temporibus voluptates iure fuga alias minus eius.', 2, 3),
('Non autem laboriosam consectetur officiis aut excepturi nobis commodi.', 4, 3),
('Esse voluptatem sed deserunt ipsum eaque maxime rerum qui.', 5, 5),
('Debitis ipsam ut pariatur molestiae ut qui aut reiciendis.', 4, 4),
('Illo atque nihil et quod consequatur neque pariatur delectus.', 3, 3),
('Qui et hic accusantium odio quis necessitatibus et magni.', 4, 2),
('Debitis repellendus inventore omnis est facere aliquam.', 3, 3),
('Occaecati eos possimus deleniti itaque aliquam accusamus.', 3, 4),
('Molestiae officia architecto eius nesciunt.', 5, 4),
('Minima dolorem reiciendis excepturi culpa sapiente eos deserunt ut.', 3, 3);

-- join: 選取多表格資料
select contents, username
from comments
join users
on users.id = comments.user_id;

select contents, url
from comments
join photos
on photos.id = comments.photo_id;

select comments.id -- 相同欄位名稱，必須給線索，前面加上 table 名
from comments
join photos
on photos.id = comments.photo_id;

select c.id as comments_id, photos.id as photos_id
from comments as c -- 當欄位使用別名時，其他地方也要用該別名
join photos
on photos.id = c.photo_id;

select c.id comments_id, photos.id photos_id
from comments c -- as 可以省略
join photos
on photos.id = c.photo_id;

-- 四種常用 join
select contents, url
from comments
inner join photos -- inner 可省略，為預設 join
on photos.id = comments.photo_id;

insert into photos(url)
values
('http://no-user-image');
select url, username
from photos
left join users -- left outer join 簡稱 left join
on photos.user_id = users.id;

insert into users(username)
values
('賭神');
select url, username
from photos
right join users -- right outer join 簡稱 right join
on photos.user_id = users.id;

select url, username
from photos
left join users
on photos.user_id = users.id
union -- full outer join，MySQL 的語法是用 union
select url, username
from photos
right join users
on photos.user_id = users.id;

-- join 搭配 where
select contents, url
from comments
join photos
on comments.photo_id = photos.id
where comments.user_id = photos.user_id;

-- 三個表格的 join
select contents, url, username
from comments
join photos on photos.id = comments.photo_id
join users on users.id = comments.user_id
where users.id = photos.user_id; -- where 也可以

select contents, url, username
from comments
join photos on photos.id = comments.photo_id
join users on users.id = comments.user_id
and users.id = photos.user_id; -- 多表格時，使用 and 比較好

select contents, url, username
from comments
join photos on photos.id = comments.photo_id
join users on users.id = comments.user_id
and comments.user_id = photos.user_id;

create table author(
id int primary key auto_increment,
authorName varchar(50)
);
insert into author(authorName)
values('金庸'),('JK Rowling'), ('查理蒙格');

create table books(
id int primary key auto_increment,
title varchar(50),
fk_author_id int,
foreign key (fk_author_id) references author(id) on delete cascade
);
insert into books(title, fk_author_id)
values('天龍八部', 1),('哈利波特', 2),('窮查理的普通常識', 3);

create table reviews(
id int primary key auto_increment,
rating int,
fk_reviewer_id int,
fk_book_id int,
foreign key (fk_reviewer_id) references author(id) on delete cascade,
foreign key (fk_book_id) references books(id) on delete cascade
);
insert into reviews (rating, fk_reviewer_id, fk_book_id)
values(3, 1, 2),(4, 2, 1),(5, 3, 3);

select title, authorName, rating
from reviews
join books on books.id = reviews.fk_book_id
join author on author.id = fk_reviewer_id
and reviews.fk_reviewer_id = books.fk_author_id;

-- aggregation and group
select user_id from comments group by user_id;

select count(id) from comments; -- aggregate function
select max(id) from comments;
select min(id) from comments;
select avg(id) from comments;
select sum(id) from comments;

select user_id, count(*) as '留言幾筆'
from comments
group by user_id;

select photo_id, count(*) as '留言幾筆'
from comments
group by photo_id;

create table artists(
 id int not null primary key auto_increment,
 artist_name varchar(50) not null unique
);

insert into artists(artist_name)
values('Jay'), ('Leo王'), ('陳綺貞'),('太研');

create table songs(
  id int not null primary key auto_increment,
  song_name varchar(50) not null,
  artist_id int,
  foreign key (artist_id) references artists(id) on delete cascade
);

insert into songs(song_name, artist_id)
values('以父之名', 1),('夜的第七章',1),('快樂的甘蔗人',2),('旅行的意義',3),('私奔到月球',3),('Spark',4);

select artist_name, count(*) as '幾首歌'
from songs
join artists on songs.artist_id = artists.id
group by artist_name;

-- having
select photo_id, count(*)
from comments
where photo_id < 3
group by photo_id
having count(*) > 2;

select user_id, count(*)
from comments
where user_id <= 50
group by user_id
having count(*) > 20;