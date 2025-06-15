# WHERE Clause

select * 
from parks_and_recreation.employee_salary
where salary > 50000
;

select *
from parks_and_recreation.employee_demographics
where gender = 'Female'
;

select *
from parks_and_recreation.employee_demographics
where gender != 'Female'
;
-- And Or Not -- logical operators

select *
from parks_and_recreation.employee_demographics
where birth_date > '1985-01-01'
and gender = 'male'
;

select *
from parks_and_recreation.employee_demographics
where birth_date > '1985-01-01'
or gender = 'male'
;

select *
from parks_and_recreation.employee_demographics
where birth_date > '1985-01-01'
or not gender = 'male'
;

select *
from parks_and_recreation.employee_demographics
where birth_date > '1985-01-01'
and not gender = 'male'
;

select *
from parks_and_recreation.employee_demographics
where(fname = 'Leslie' and age = 45) or age > 55
;

-- LIKE Statement (searches specific sequence)
select *
from parks_and_recreation.employee_demographics
where fname like 'Jer%'                          
;

select *
from parks_and_recreation.employee_demographics
where fname like '%er%'                          
;

select *
from parks_and_recreation.employee_demographics
where fname like 'a%'                          
;

select *
from parks_and_recreation.employee_demographics
where fname like 'a__'                          
;

select *
from parks_and_recreation.employee_demographics
where fname like 'a__%'
;



