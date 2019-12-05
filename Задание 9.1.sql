drop database if exists task9;
create database task9;
use task9;

drop table if exists shop;
create table shop(
	id int not null auto_increment primary key,
	users varchar(50) unique
);

INSERT INTO shop values ('1','Solon'),
('2','Godfrey'),
('3','Nickolas'),
('4','Sebastian'),
('5','Keshawn'),
('6','Israel'),
('7','Samson'),
('8','Sofia'),
('9','Hyman'),
('10','Raul'),
('11','Tony'),
('12','Dewayne'),
('13','Kamron'),
('14','Delbert'),
('15','Isac'),
('16','Dorcas'),
('17','Milford'),
('18','Isom'),
('19','Reagan'),
('20','Josue'); 

drop table if exists sample;
create table sample(
	id int not null auto_increment primary key,
	users varchar(50) unique
);

INSERT INTO sample values ('1','Micheal'),
('2','Cooper'),
('3','Caleb'),
('4','Penelope'),
('5','Opal'),
('6','Jarred'),
('7','Jeffry'),
('8','Melyssa'),
('9','Esperanza'),
('10','Nikko'),
('11','Patricia'),
('12','Elenora'),
('13','Mallie'),
('154','Morgan'),
('15','Savanah'),
('16','Shea'),
('17','Katelin'),
('18','Peyton'),
('19','Everett'),
('20','Maeve');

start transaction;
insert ignore into task9.sample(users)
select users from task9.shop where id = 1;
commit;