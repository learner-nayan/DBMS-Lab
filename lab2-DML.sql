use dbms;

-- Insert a single record into the department table.
insert into departments values(3, 'MOFA', 'SD');


-- Insert more than a record into the employees table using a single insert command.
insert into employees
values 
(1, 'Ramesh', 'Politician', 5, 10000.55),
(4, 'Mridul', 'ASP', 5, 7000),
(102, 'Arzu', 'Politician', 3, 40000.66),
(105, 'Prabin', 'Lecturer', 3, 30000),
(108, 'Messi', 'Footballer', 1, 60000);


-- Becasue of  MySQL error code: 1175 during UPDATE in MySQL Workbench
SET SQL_SAFE_UPDATES = 0;


-- Update the emp table to set the salary of all employees to Rs15000/- who are working as ASP.
update employees
set sal=15000 
where job='ASP';


-- Create a pseudo table pseudo_employees with the same structure as the table employees and insert rows into the table using select clauses.
create table pseudo_employees as 
select * from employees where 1=0;

insert into pseudo_employees
select * from employees;


-- Select employee name, job from the emp table.
select ename,job from pseudo_employees;


-- Delete only those who are working as lecturers.
delete from pseudo_employees where job='Lecturer';


-- List the records in the employees table orderby salary in ascending order.
select * from employees
order by sal asc;


-- List the records in the employees table orderby salary in descending order.
select * from employees
order by sal desc;


-- Display only those pseudo_employees whose deptno is 1.
select * from pseudo_employees where deptno=1;


-- Display deptno from the table pseudo_employees avoiding the duplicate values.
select distinct deptno from pseudo_employees;


