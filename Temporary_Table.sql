-- Temporary Tables

create temporary table temp_table
(fname varchar(50),
lname varchar(50),
fav_movie varchar(100)
);

select *
from temp_table;

create temporary table salary_over_50k
select *
from employee_salary
where salary >= 50000
;

select *
from salary_over_50k;

