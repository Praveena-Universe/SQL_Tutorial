-- Limit and Aliasing

select * 
from employee_demographics
limit 3
;

select * 
from employee_demographics
order by age DESC
limit 3
;

select * 
from employee_demographics
order by age DESC
limit 2, 1
;
-- Aliasing

select gender, avg(age) as avg_age
from employee_demographics
group by gender
having avg_age > 40
;








