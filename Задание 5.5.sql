-- Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели

use homework;

select week(user_birtday) as week, count(*) from usersbase group by week;
