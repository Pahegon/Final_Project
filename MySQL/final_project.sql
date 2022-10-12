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

#Cultivation area with production

ALTER TABLE production_crops_ha
RENAME COLUMN Value TO value_ha;

ALTER TABLE import_qty
RENAME COLUMN value_exp_qty TO value_imp_qty;

create view cultivation_area_production as
select value_ha, area, production_clean.item, production_clean.year,production_clean.value from production_clean
join production_crops_ha
using (area);
d




#WASTE
#crear una view mas con import and export y luengo hacer un join con production

ALTER TABLE import_qty
RENAME COLUMN value_exp_qty TO value_imp_qty;

create view waste as
select area, export_qty.value_exp_qty, import_qty.year, value_imp_qty, import_qty.item  from import_qty
join export_qty
using (area)
join production_clean
using (area)
where import_qty.year > '1999';

select * from cultivation_area_production
where item = 'rice'

select * from export_qty;
select * from import_qty;

select 



#Consumption by country


select production_clean.value, value_imp_qty, production_clean.year, production_clean.area from production_clean
join import_qty
using (area)
where production_clean.year = '2001'
and area = 'barley'

and production_clean.area = 'canada'
group by production_clean.year, production_clean.value, value_imp_qty;

select import_qty.area, import_qty.item, import_qty.year, value_imp_qty, production_clean.Value from import_qty
join production_clean
using (Area)
where import_qty.year = '2001'
and import_qty.item = 'barley'
and production_clean.area = 'canada'

select value_imp_qty, year, area from import_qty
where item = 'barley' 
and area = 'canada'
and year > '1999';

select Value, year, area from production_clean
where item = 'barley' 
and area = 'canada'
and year > '1999';

select * from cultivation_area_production



