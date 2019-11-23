/* В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 0, 
если товар закончился и выше нуля, если на складе имеются запасы. Необходимо отсортировать записи таким образом, 
чтобы они выводились в порядке увеличения значения value. Однако, нулевые запасы должны выводиться в конце, после всех записей*/

use homework;

drop table if exists storehouse_products;
create table storehouse_products(
	products varchar(40), 
	`values` int
)

insert into storehouse_products values ('Мыло', 0),
('Порошок', 2500),
('Зубная паста', 0),
('Щампунь', 30),
('Туалетная бумага', 500),
('Зубые щетки', 1);

select * 
from storehouse_products 
order by case when `values` != 0 then 0 else 1 end asc, 
`values` asc;
