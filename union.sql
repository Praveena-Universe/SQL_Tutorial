-- Unions : allows to combine rows

select age, gender
from employee_demographics
union
select fname, lname
from employee_salary
;

select fname, lname
from employee_demographics
union distinct
select fname, lname
from employee_salary
;

select fname, lname
from employee_demographics
union all
select fname, lname
from employee_salary
;

select fname, lname, 'old man' As label
from employee_demographics
where age > 40 and gender = 'Male'
union
select fname, lname, 'old lady' As label
from employee_demographics
where age > 40 and gender = 'Female'
union
select fname, lname, 'Highly paid employee' As label
from employee_salary
where salary > 70000
order by fname, lname
;

