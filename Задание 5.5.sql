-- ����������� ���������� ���� ��������, ������� ���������� �� ������ �� ���� ������

use homework;

select week(user_birtday) as week, count(*) from usersbase group by week;
