use final_project_db

ALTER TABLE export_quantity
RENAME COLUMN Value TO value_exp_qty;

ALTER TABLE import_quantity2
RENAME COLUMN Value TO value_imp_qty;

ALTER TABLE export_value
RENAME COLUMN Value TO value_exp_value;

ALTER TABLE import_value
RENAME COLUMN Value TO value_imp_value;

select area, item, 

#Top 10 grains

select item,sum(value), Year from production_clean
group by item, year, value
having Year > 2009

#Top consumers 
create view Top_consumers as
select production_clean.area, production_clean.item, production_clean.year, sum(value), sum(value_imp_qty) from production_clean
join import_qty 
using (area)
where production_clean.year > 1999
group by area, production_clean.item, value_imp_qty, value, production_clean.year;

select distinct(unit) from production_clean

ALTER TABLE production_clean
DROP COLUMN `Unnamed: 0`

#Coordenadas_production
ALTER TABLE coordenadas
RENAME COLUMN country TO area

select  area from import_qty


#top 10 producers

select area, item, value from production_clean
join coordenadas
using (country);

#Top consumers
create view Top_consumers as
select area, prod_imp.item, prod_imp.year, value, value_imp_qty from prod_imp
join import_qty
using (area)

select * from top_consumers

select distinct(area) from prod_coord

ALTER TABLE prod_coord
DROP COLUMN `Unnamed: 0`

#Exp2

ALTER TABLE export_value
RENAME COLUMN value_exp_qty TO value_exp_value;

create view exp2 as 
select export_qty.area, export_qty.item, export_qty.year, export_qty.value_exp_qty, value_exp_value from export_qty
join export_value 
using (area)
where export_qty.year > 1999;

#Imp2
create view imp2 as
select import_qty.area, import_qty.item, import_qty.year, value_imp_qty, value from import_qty
join import_value using(area)
where import_qty.year > 1999;


#Exp_imp_qty

create view Exp_imp_qty as
select import_qty.area, import_qty.item, import_qty.year, value_imp_qty, value_exp_qty from import_qty
join export_qty using (area)
where import_qty.year > 1999;

#Exp_imp_Value

create view Exp_imp_Value as
select export_value.area, export_value.item, export_value.year, value_exp_value, value from export_value
join import_value
using (area)
where export_value.year > 1999;

select * from waste

ALTER TABLE import_qty
DROP COLUMN MyUnknownColumn

select * from top_consumers;
select * from waste;
#top consumers
create view top_consumers2 as
select area, prod_coord.Item, prod_coord.year, prod_coord.value  from prod_coord
join import_qty
using (area);
where area = "argentina"
and prod_coord.item = "barley"
and prod_coord.year = 2005;

ALTER TABLE import_qty
DROP COLUMN MyUnknownColumn
 
alter table import_qty
drop column MyUnknownColumnd

select * from prices


select sum(value) from prices
where year = 2020
and item = "soya beans";


select * from export_value;
select * from export_qty;

select * from top_consumers
where year = 2020