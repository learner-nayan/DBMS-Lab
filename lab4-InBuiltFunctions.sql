use dbms;

-- Display all the details of the records whose employee name starts with 'A'.
select * from pseudo_employees
where ename like 'A%';


-- Display all the details of the records whose employee name does not starts with 'A'.
select * from pseudo_employees
where ename not like 'A%';


-- Display the rows whose salary ranges from 15000 to 30000.
select * from pseudo_employees
where sal between 15000 and 30000;


-- Calculate the total and average salary amount of the emp table.
select sum(sal) as sal_sum, avg(sal) as sal_avg from employees;


-- Count the total records in the emp table.
select count(*) as total_records from employees;


-- Determine the max and min salary and rename the column as max_salary and min_salary.
select max(sal) as max_salary, min(sal) as min_salary from employees;


-- Find how many job titles are available in the employee table
select count(distinct job) as unique_job_titles from employees;


-- What is the difference between maximum and minimum salaries of employees in the organization?

