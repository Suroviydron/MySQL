use task 6;

drop table if exists catalogs;
create table catalogs(
	id bigint auto_increment not null primary key,
	catalog_name varchar(50)
);

drop table if exists products;
create table products(
	id bigint auto_increment not null primary key,
	product_name varchar(50),
	price bigint not null,
	catalog_id bigint not null
);

INSERT INTO `catalogs` VALUES ('1','Meat'),
('2','Non Alcohol drinks'),
('3','Alcohol drinks'),
('4','Bread'),
('5','Dairy products'); 

INSERT INTO `products` VALUES ('1','chicken meat','86','1'),
('2','aquaminerale','54','2'),
('3','wine','349','3'),
('4','bakery','25','4'),
('5','milk','50','5'),
('6','lamb meat','292','1'),
('7','pepsi','40','2'),
('8','beer','70','3'),
('9','brick bread','19','4'),
('10','yogurt','13','5'),
('11','grilled chicken','159','1'),
('12','sprite','43','2'),
('13','vodka','190','3'),
('14','rye bread','32','4'),
('15','milkshake','53','5'),
('16','pork meat','175','1'),
('17','mirinda','57','2'),
('18','champagne','406','3'),
('19','borodinskyy bread','14','4'),
('20','kefir','7','5'),
('21','beed meat','2','1'),
('22','redbull','104','2'),
('23','congac','724','3'),
('24','premium bread','20','4'),
('25','butter','42','5'),
('26','chick meat','56','1'),
('27','spark water','44','2'),
('28','wisky','2016','3'),
('29','wheel-bread','65','4'),
('30','tan','80','5'),
('31','chicken legs','248','1'),
('32','bonaque','33','2'),
('33','tekilla','1748','3'),
('34','corn flakes','50','4'),
('35','sour cream','71','5'),
('36','meat leaf','156','1'),
('37','fanta','40','2'),
('38','jaguar','203','3'),
('39','corns','90','4'),
('40','cream','61','5');

select product_name, catalog_name 
from products join catalogs
where catalog_name = (select catalog_name from catalogs where id = products.catalog_id)
order by catalog_name;