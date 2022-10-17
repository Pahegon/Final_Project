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
select production_clean.area, production_clean.item, sum(value), sum(value_imp_qty) from production_clean
join import_qty 
using (area)
where production_clean.year > 2009
group by area, production_clean.item, value_imp_qty, value;

select distinct(unit) from production_clean

ALTER TABLE production_clean
DROP COLUMN `Unnamed: 0`

#Coordenadas

#top 10 producers

select area, item, value, country from production_clean
join coordenadas
using (country)

select * from coordenadas
ALTER TABLE coordenadas
DROP COLUMN `Unnamed: 0`



select area from import_qty
