-- Group by

select gender
from parks_and_recreation.employee_demographics
group by gender
;
/* group by column works with aggregate columns (like below statement give error since your are grouping different column(fname) with gender) 
in other case AVG(age) group by gender works since it's a aggregate */

select fname
from parks_and_recreation.employee_demographics
group by gender
;

select gender, avg(age)
from parks_and_recreation.employee_demographics
group by gender
;

select occupation, salary
from parks_and_recreation.employee_salary
group by occupation, salary
;

select gender, avg(age), max(age), min(age), count(age)
from parks_and_recreation.employee_demographics
group by gender
;

-- Order by
select *
from parks_and_recreation.employee_demographics
order by fname
;

select *
from parks_and_recreation.employee_demographics
order by fname desc
;

select *
from parks_and_recreation.employee_demographics
order by gender
;

select *
from parks_and_recreation.employee_demographics
order by gender, age
;


