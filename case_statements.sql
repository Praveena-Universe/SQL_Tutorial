-- Case Statements adds logic to select statements

select fname,
lname,
age,
case
	when age <= 40 then 'young'
    when age > 40 then 'old'
end as age_bracket
from employee_demographics
order by 3
;

-- Pay Increase and Bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance = 10% Bonus

select fname, lname, salary,
case
	when salary < 50000 Then salary * 1.05
    when salary > 50000 Then salary * 1.07
end as new_salary,
case
	when dept_id = 6 Then salary * .10
end as bonus
from employee_salary;

















