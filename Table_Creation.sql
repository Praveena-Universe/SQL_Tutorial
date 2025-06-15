
use test;

CREATE TABLE Student(
studentID INT NOT NULL auto_increment,
FName varchar(20),
LName varchar(30),
Address varchar(30),
City varchar(15),
Marks int,
primary key (studentID)
);

select * from Student;
