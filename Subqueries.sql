-- subqueries : Query within a query

-- employee demographics for parks and recreation
select *
from employee_demographics
where employee_id in 
				(select employee_id
					from employee_salary
                    where dept_id = 1)
;

select fname, salary, 
(select(avg(salary))
from employee_salary)
from employee_salary;

select gender, avg(age), max(age), min(age), count(age)
from employee_demographics
group by gender;

select avg(`max(age)`)
from
(select gender, 
avg(age), 
max(age), 
min(age), 
count(age)
from employee_demographics
group by gender) as agg_table;














