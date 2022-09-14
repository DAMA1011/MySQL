create database ig_app;
use ig_app;

create table users(
id integer primary key auto_increment,
username varchar(200) unique not null,
created_at timestamp default now()
);

create table photos(
id integer primary key auto_increment,
image_url varchar(300) not null,
user_id integer not null,
created_at timestamp default now(),
foreign key (user_id) references users(id)
);

create table comments(
id integer primary key auto_increment,
comment_text varchar(300) not null,
user_id integer not null,
photo_id integer not null,
created_at timestamp default now(),
foreign key (user_id) references users(id),
foreign key(photo_id) references photos(id)
);

create table likes(
user_id int not null,
photo_id int not null,
created_at timestamp default now(),
foreign key (user_id) references users(id),
foreign key (photo_id) references photos(id),
primary key (user_id, photo_id)
);

create table follow(
follower_id int not null,
followee_id int not null,
created_at timestamp default now(),
foreign key (follower_id) references users(id),
foreign key (followee_id) references users(id),
primary key (follower_id, followee_id)
);

create table tags(
id int primary key auto_increment,
tag_name varchar(300) not null,
created_at timestamp default now()
);

create table photo_tags(
photo_id int not null,
tag_id int not null,
foreign key (photo_id) references photos(id),
foreign key (tag_id)references tags(id),
primary key (photo_id, tag_id)
);
