drop database if exists vk;
create database vk;
use vk;

drop table if exists users;
create table users(
	id serial primary key,
	firstname varchar(100),
	lastname varchar(100),
	email varchar(100) unique,
	`password_hash` varchar(100),
	phone varchar(12),
	
	index users_phone_idx(phone),
	index(firstname, lastname)
);
	
drop table if exists profiles;
create table profiles(
	user_id serial primary key,
	gender char(1),
	birthday date,
	photo_id bigint unsigned null,
	hometown varchar(100),
	created_at datetime default now()
);

alter table profiles
add constraint fk_user_id
foreign key(user_id) references users(id)
on delete restrict
on update cascade;

drop table if exists messages;
create table messages(
	id serial primary key,
	from_user_id bigint unsigned not null,
	to_user_id bigint unsigned not null,
	body text,
	created_at datetime default now(),
	
	foreign key(from_user_id) references users(id),
	foreign key(to_user_id) references users(id),
	
	index(from_user_id),
	index(to_user_id)
);

drop table if exists friend_requests;
create table friend_requests(
	initiator_user_id bigint unsigned not null,
	target_user_id bigint unsigned not null,
	`status` ENUM('requested', 'approved', 'unfriended', 'declined'),
	created_at datetime default now(),
	updated_at datetime,
	
	primary key(initiator_user_id, target_user_id),
	index(initiator_user_id),
	index(target_user_id),
	foreign key(initiator_user_id) references users(id),
	foreign key(target_user_id) references users(id)
);

drop table if exists communities;
create table communities(
	id serial primary key,
	name varchar(200),
	index(name)
);

drop table if exists users_communitites;
create table users_communities(
	user_id bigint unsigned not null,
	community_id bigint unsigned not null,
	
	primary key(user_id, community_id),
	foreign key(user_id) references users(id),
	foreign key(community_id) references communities(id)
);

drop table if exists media_types;
create table media_types(
	id serial primary key,
	name varchar(200)
);

drop table if exists media;
create table media(
	id serial primary key,	
	media_type_id bigint unsigned not null,
	user_id bigint unsigned not null,
	body text,
	filename varchar(250),
	`size` int,
	metadata JSON,
	created_at datetime default now(),
	updated_at datetime,
	
	foreign key(user_id) references users(id),
	foreign key(media_type_id) references media_types(id),
	index(user_id)
);

drop table if exists photo_albums;
create table photo_albums(
	id serial,
	name varchar(200),
	user_id bigint unsigned not null,
	
	foreign key(user_id) references users(id),
	primary key(id)
);

drop table if exists photos;
create table photos(
	id serial primary key,
	album_id bigint unsigned null,
	media_id bigint unsigned null,
	
	foreign key(album_id) references photo_albums(id),
	foreign key(media_id) references media(id)
);

drop table if exists likes;
create table likes(
	id serial primary key,
	media_id bigint unsigned null,
	user_id bigint unsigned not null,
	
	foreign key(user_id) references users(id),
	foreign key(media_id) references media(id)
);