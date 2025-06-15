-- stored procedures

create procedure large_salaries()
select *
from employee_salary
where salary >= 50000;

call large_salaries();

delimiter $$
create procedure large_salaries3()
begin
	select *
	from employee_salary
	where salary >= 50000;
	select *
	from employee_salary
	where salary >= 10000;
end $$
delimiter ;

call large_salaries3();

DROP procedure IF EXISTS large_salaries4;

delimiter $$
create procedure large_salaries4(p_employee_id int)
begin
	select *
	from employee_salary
    where employee_id = p_employee_id;
end $$
delimiter ;

call large_salaries4(5);














