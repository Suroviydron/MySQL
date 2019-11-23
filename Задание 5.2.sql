/*Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались
значения в формате "20.10.2017 8:10". Необходимо преобразовать поля к типу DATETIME, сохранив введеные ранее значения. */ 

drop database if exists homework;
create database homework;
use homework;

drop table if exists task5;
create table task5(
	created_at varchar(20),
	updated_at varchar(20)
)

insert into task5 values ('20.10.2017 8:10', '20.10.2017 8:10'),
('23.11.2019 10:50', '23.11.2019 10:50');

update homework.task5
set 
	created_at = str_to_date(created_at, '%d.%m.%Y %h:%i'),
	updated_at = str_to_date(updated_at, '%d.%m.%Y %h:%i');
