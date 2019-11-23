-- Подсчитайте средний возраст пользователей в таблице users

use homework;

drop table if exists usersbase;
create table usersbase(
	id int auto_increment primary key,
	name varchar(50),
	user_birtday datetime not null
)

insert into usersbase values('1', 'Андрей', '1998-06-23'),
('2','Аня', '2007-04-10'),
('3', 'Алексей', '2000-08-21'),
('4', 'Дмитрий', '1989-11-06'),
('5', 'Тихон', '1975-11-04');

alter table homework.usersbase add column age int not null;

update usersbase
	set age = (to_days(now()) - to_days(user_birtday))/365.25;

select avg(age) from usersbase;


