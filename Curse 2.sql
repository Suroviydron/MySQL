use curse;

-- 1.
select *
from games
where id in (select game_id from scores where metacritic_score > 90);

-- 2.
select game_name, price, publisher_name
from games join publishers
where publisher_name = (select publisher_name from publishers where id = games.publisher_id) and publisher_name = "Ubisoft";

-- 3.
drop view if exists platform_selection;
create view platform_selection
as select game_name as game, price, category_name as platform
from games join categories
where category_name = (select category_name from categories where id = games.category_id)
order by category_name;

-- 4.
drop view if exists birthday_discount;
create view birthday_discount
as select firstname, lastname, email, birthday
from users
where week(birthday) = week(now());

-- 5.
start transaction;
savepoint normal_prices;
	
	update games
	set price = (price	* (1 - (select amount from discounts where discount_name = 'Black Friday')/100));
	select *
	from games;

rollback to savepoint normal_prices;
commit;

-- 6.
drop procedure if exists order_cost;

delimiter $$

create procedure order_cost(in game varchar(100), dtype varchar(100), dtown varchar(100))
begin
	
	set @cost = 0;

	set @cost = @cost + (select price from games where game_name = game);

	set @cost = @cost + (select delivery_cost from delivery where delivery_type = dtype and town = dtown);

	select @cost;	

end $$


call order_cost('Spider Man', 'PickPoint', 'Krasnodar');
