/* using schema */
use honda_mysql;

/* showing table consumen  */
select * from consumen_clean_python;

alter table consumen_clean_python
add id int not null auto_increment primary key first;

describe consumen_clean_python;
show create table consumen_clean_python;

/* showing table rating */
select * from rating_clean_python;

alter table rating_clean_python
add id int not null auto_increment primary key first;

describe rating_clean_python;
show create table rating_clean_python;


/* merge tablle */
select cs.id, rt.id, cs.year, cs.make, rt.model, cs.condition, cs.price, cs.consumer_rating, rt.comfort_rating, rt.performance_rating, 
rt.value_for_money_rating, rt.reliability_rating, rt.mileage, cs.fuel_type, cs.engine,  rt.state, rt.seller_type
from consumen_clean_python as cs
join rating_clean_python as rt on (cs.id = rt.id)
order by year desc;