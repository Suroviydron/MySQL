drop table if exists users;
create table users(
	id bigint auto_increment not null primary key,
	firstname varchar(50),
	lastname varchar(50),
	loginname varchar(50) unique,
	email varchar(50) unique,
	phone varchar(12),
	created_at datetime default now()
);

drop table if exists orders;
create table orders(
	id bigint auto_increment not null primary key,
	users_id bigint NOT NULL,
	orders_structure varchar(100),
	price bigint,
	delivery ENUM('SDEK', 'Pickpoint', 'Courier')
);

INSERT INTO `users` VALUES ('1','Macy','Sauer','ratione','greyson39@example.org','687.969.6852','1993-09-11 16:16:02'),
('2','Mandy','Beer','nulla','gbarrows@example.net','638.593.5388','2007-10-29 01:52:26'),
('3','Arthur','Grady','ullam','tquigley@example.com','+12(7)488480','1983-07-14 12:04:18'),
('4','Dexter','Swift','qui','swift.dillon@example.org','(244)970-588','2005-03-13 05:46:03'),
('5','Manuel','Cormier','exercitationem','lane17@example.com','582-005-8476','2018-01-06 10:35:04'),
('6','Elinor','Legros','velit','tyson29@example.net','06112509797','1994-06-07 01:14:20'),
('7','Joany','Swaniawski','omnis','ramiro.brakus@example.com','326.930.0615','1995-07-15 09:05:30'),
('8','Llewellyn','Walker','quam','bernie95@example.org','(003)338-949','1997-07-08 16:07:04'),
('9','Blaze','Heaney','sint','chesley09@example.com','(049)957-285','2002-10-07 06:02:48'),
('10','Esmeralda','Reinger','commodi','alexandria.crona@example.net','544.679.5088','2014-10-21 14:53:59');

INSERT INTO `orders` VALUES ('1','1','','16126670','Pickpoint'),
('2','12','8665','6385','Pickpoint'),
('3','31','8751','735426','Courier'),
('4','114','110917','13512','Pickpoint'),
('5','51','','0','Courier'),
('6','6','209742655','2','SDEK'),
('7','7','62','504','SDEK'),
('8','41','508','2641','Courier'),
('9','9','1011102','30653','SDEK'),
('10','100','14','703','SDEK'),
('11','1','206876957','8','SDEK'),
('12','2','57','10225763','SDEK'),
('13','3','870839','1344879','Courier'),
('14','42','892','13','SDEK'),
('15','5','35','49364405','Pickpoint'),
('16','61','67','14','SDEK'),
('17','7','596608','139112','Courier'),
('18','47','4851241','1274','Pickpoint'),
('19','19','6291','4','SDEK'),
('20','100','62457778','516852037','Pickpoint'),
('21','1','417','147','Pickpoint'),
('22','2','','0','Pickpoint'),
('23','3','69','56777','Courier'),
('24','4','2527937','395','SDEK'),
('25','25','676675','275478244','Pickpoint'),
('26','6','1497','19252895','Courier'),
('27','7','886','2','Courier'),
('28','42','558','589319','Courier'),
('29','9','758568','66','Courier'),
('30','3','533','49879753','SDEK'); 



select firstname, lastname, loginname
from users
where id in (select users_id from orders);