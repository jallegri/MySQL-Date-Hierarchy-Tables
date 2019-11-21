############################################################################################
## lu_tie_dia
############################################################################################
#
# DDL
#
ALTER TABLE lu_tie_dia 
DROP COLUMN id_tie_anio_semana
;

ALTER TABLE lu_tie_dia 
ADD COLUMN id_tie_anio_semana INT(11) NULL AFTER desc_tie_dia
;
#
# DML
#
UPDATE lu_tie_dia SET
id_tie_dia_semana = 0,
id_tie_semana = 0,
id_tie_anio_semana = 0
;
UPDATE lu_tie_dia SET
id_tie_dia_semana = dayofweek(id_tie_dia)
;
UPDATE lu_tie_dia SET
id_tie_semana = id_tie_mes * 100 + ((FLOOR((DAY(id_tie_dia) - (7 - WEEKDAY(DATE_FORMAT(id_tie_dia, '%Y-%m-01')))) / 7) + 2))
;
UPDATE lu_tie_dia SET
id_tie_anio_semana = year(id_tie_dia)*100+
	coalesce(
		floor((datediff((id_tie_dia), date_sub((DATE_FORMAT(id_tie_dia, '%Y-01-01')), interval dayofweek(DATE_FORMAT(id_tie_dia, '%Y-01-01')) day)+1))/7+1),
        floor(datediff(id_tie_dia, DATE_FORMAT(id_tie_dia, '%Y-01-01'))/7+1)
			)
;
############################################################################################
## lu_tie_anio_semana
############################################################################################
#
# DDL/DML
#
drop table if exists lu_tie_anio_semana
;
create table lu_tie_anio_semana as
select 
a.id_tie_anio_semana id_tie_anio_semana
,min(id_tie_dia) id_tie_dia_ini
,max(id_tie_dia) id_tie_dia_fin
,year(id_tie_dia) id_tie_anio
,mod(a.id_tie_anio_semana,100) id_tie_semana_de_anio
,trim(cast(Concat('Semana ', floor((datediff((id_tie_dia), date_sub((DATE_FORMAT(id_tie_dia, '%Y-01-01')), interval dayofweek(DATE_FORMAT(id_tie_dia, '%Y-01-01')) day)))/7+1), ' de ', year(id_tie_dia)) as char(30))) desc_tie_anio_semana
,trim(cast(Concat('Semana ', floor((datediff((id_tie_dia), date_sub((DATE_FORMAT(id_tie_dia, '%Y-01-01')), interval dayofweek(DATE_FORMAT(id_tie_dia, '%Y-01-01')) day)))/7+1)) as char(15))) desc_tie_semana_de_anio
from lu_tie_dia a
group by a.id_tie_anio_semana
;
ALTER TABLE lu_tie_anio_semana 
CHANGE COLUMN id_tie_anio_semana id_tie_anio_semana INT(11) NOT NULL ,
ADD PRIMARY KEY (id_tie_anio_semana)
;
