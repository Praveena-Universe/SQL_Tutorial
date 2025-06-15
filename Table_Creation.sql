use parks_and_recreation;

CREATE TABLE employee_demographics (
employee_id int NOT NULL,
fname varchar(50),
lname varchar(50),
age int,
gender varchar(10),
birth_date date,
PRIMARY KEY (employee_id));

INSERT INTO employee_demographics (employee_id, fname, lname, age, gender, birth_date) VALUES (1, 'Leslie', 'Knope', 45, 'Female', '1979-09-25');
INSERT INTO employee_demographics (employee_id, fname, lname, age, gender, birth_date) VALUES (10, 'Andy', 'Dwyer', 35, 'Male', '1989-03-25');
INSERT INTO employee_demographics (employee_id, fname, lname, age, gender, birth_date) VALUES (11, 'Mark', 'Brendanawicz', 40, 'Male', '1983-06-14');
INSERT INTO employee_demographics (employee_id, fname, lname, age, gender, birth_date) VALUES (12, 'Craig', 'Middlebrooks', 37, 'Male', '1986-07-27');
INSERT INTO employee_demographics (employee_id, fname, lname, age, gender, birth_date) VALUES (3, 'Tom', 'Haveford', 38, 'Male', '1987-03-04');
INSERT INTO employee_demographics (employee_id, fname, lname, age, gender, birth_date) VALUES (4, 'April', 'Ludgate', 31, 'Female', '1994-03-27');
INSERT INTO employee_demographics (employee_id, fname, lname, age, gender, birth_date) VALUES (6, 'Donna', 'Meagle', 47, 'Female', '1977-07-30');
INSERT INTO employee_demographics (employee_id, fname, lname, age, gender, birth_date) VALUES (7, 'Ann', 'Perkins', 36, 'Female', '1988-12-01');
INSERT INTO employee_demographics (employee_id, fname, lname, age, gender, birth_date) VALUES (8, 'Chris', 'Trager', 44, 'Male', '1980-11-11');
INSERT INTO employee_demographics (employee_id, fname, lname, age, gender, birth_date) VALUES (9, 'Ben', 'Wyatt', 39, 'Male', '1985-07-26');

select * 
from employee_demographics;

CREATE TABLE employee_salary(
  employee_id int NOT NULL,
  fname varchar(50) NOT NULL,
  lname varchar(50) NOT NULL,
  occupation varchar(50),
  salary int,
  dept_id int);
  
INSERT INTO employee_salary (employee_id, fname, lname, occupation, salary, dept_id) VALUES (1, 'Leslie', 'Knope', 'Deputy Director of Parks and Recreation', 75000, 1);
INSERT INTO employee_salary (employee_id, fname, lname, occupation, salary, dept_id) VALUES (2, 'Ron', 'Swanson', 'Director of Parks and Recreation', 70000, 1);
INSERT INTO employee_salary (employee_id, fname, lname, occupation, salary, dept_id) VALUES (3, 'Tom', 'Haveford', 'Entrepreneur', 50000, 1);
INSERT INTO employee_salary (employee_id, fname, lname, occupation, salary, dept_id) VALUES (4, 'April', 'Ludgate', 'Asisstant to Director', 25000, 1);
INSERT INTO employee_salary (employee_id, fname, lname, occupation, salary, dept_id) VALUES (5, 'Jerry', 'Gergich', 'Office Manager', 50000, 1);
INSERT INTO employee_salary (employee_id, fname, lname, occupation, salary, dept_id) VALUES (6, 'Donna', 'Meagle', 'office Manager', 60000, 1);
INSERT INTO employee_salary (employee_id, fname, lname, occupation, salary, dept_id) VALUES (7, 'Ann', 'Perkins', 'Nurse', 55000, 4);
INSERT INTO employee_salary (employee_id, fname, lname, occupation, salary, dept_id) VALUES (8, 'Chris', 'Trager', 'City Manager', 90000, 3);
INSERT INTO employee_salary (employee_id, fname, lname, occupation, salary, dept_id) VALUES (9, 'Ben', 'Wyatt', 'Satet Auditor', 70000, 6);
INSERT INTO employee_salary (employee_id, fname, lname, occupation, salary, dept_id) VALUES (11, 'Mark', 'Brendanawicz', 'City Planner', 57000, 3);
INSERT INTO employee_salary (employee_id, fname, lname, occupation, salary, dept_id) VALUES (12, 'Craig', 'Middlebrooks', 'Parks Director', 65000, 1);


select * 
from employee_salary;




