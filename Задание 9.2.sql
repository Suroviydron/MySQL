use task6;

drop view if exists task9;
create view task9 
as select product_name as name, catalog_name as catalog 
from products join catalogs
where catalog_name = (select catalog_name from catalogs where id = products.catalog_id)
order by catalog_name;


