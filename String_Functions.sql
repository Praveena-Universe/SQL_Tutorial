-- String functions (built-in functions for strings

select length('skyfall');

select fname, length(fname)
from employee_demographics
order by 2
;

select upper('sky');
select lower('Sky');

select fname, UPPER(fname)
from employee_demographics;

-- Trim removes trailing white spaces from strings

select trim('            sky              ');
select ltrim('            sky              ');
select rtrim('            sky              ');

select fname, 
left(fname, 4),
right(fname, 4),
substring(fname, 3,2),
birth_date,
substring(birth_date, 6,2) as birth_month
from employee_demographics;

select fname, replace(fname, 'a', 'z')
from employee_demographics;

select locate('x', 'Alxender');

select fname, locate('An', fname)
from employee_demographics;

select fname, lname,
concat(fname, ' ', lname) as full_name
from employee_demographics
;



















