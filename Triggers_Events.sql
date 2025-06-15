-- Triggers and Events: Trigger is a block of code that executes automatically when an event takes place on a specific table

SELECT * 
FROM employee_demographics;

SELECT * 
FROM employee_salary;

DELIMITER $$
CREATE TRIGGER employee_insert
	AFTER INSERT ON employee_salary
	FOR EACH ROW 
BEGIN
	INSERT INTO employee_demographics (employee_id, fname, lname)
    VALUES (NEW.employee_id, NEW.fname, NEW.lname);
END $$
DELIMITER ;

INSERT INTO employee_salary(employee_id, fname, lname, occupation, salary, dept_id)
VALUES (13, 'Jean', 'Saph', 'Entertainment CEO', 1000000, NULL);

-- Events : Event takes place at a schedule
-- Example of event: Delete person entries from tables as person reaches Retirement age(60)

DELIMITER $$
CREATE EVENT delelte_retirees
ON SCHEDULE EVERY 30 SECOND
DO
BEGIN
	DELETE
	FROM employee_demographics
    WHERE age >= 60;
END $$
DELIMITER ;

SHOW VARIABLES LIKE 'event%';



