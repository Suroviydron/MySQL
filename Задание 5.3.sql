/* � ������� ��������� ������� storehouses_products � ���� value ����� ����������� ����� ������ �����: 0, 
���� ����� ���������� � ���� ����, ���� �� ������ ������� ������. ���������� ������������� ������ ����� �������, 
����� ��� ���������� � ������� ���������� �������� value. ������, ������� ������ ������ ���������� � �����, ����� ���� �������*/

use homework;

drop table if exists storehouse_products;
create table storehouse_products(
	products varchar(40), 
	`values` int
)

insert into storehouse_products values ('����', 0),
('�������', 2500),
('������ �����', 0),
('�������', 30),
('��������� ������', 500),
('����� �����', 1);

select * 
from storehouse_products 
order by case when `values` != 0 then 0 else 1 end asc, 
`values` asc;
