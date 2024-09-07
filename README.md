DBMS Lab Assignment

1. Data Definition Language(DDL) Commands

Create a table called EMP with the following structure. 

Name   Type

---------- -------------

EMPNO NUMBER(6)

ENAME VARCHAR(20)

JOB VARCHAR(10)

DEPTNO NUMBER(3)

SAL NUMBER(7,2)

Allow NULL for all columns except ename and job. 

empno as the primary key.

Deptno as the foreign key.

Add a column experience to the emp table with data type number and allow null.

Modify the column width of the job field of the emp table.				

Create a dept table with the following structure. 

Name Type

------------ -----------

 DEPTNO NUMBER(2) 

DNAME VARCHAR(10) 

LOC VARCHAR(10) 

Deptno as the primary key.

Create the emp1 table with ename and empno, add constraints to check the empno value while entering (i.e) empno > 100. 

Drop a column experience to the emp table. 

Truncate the emp table and drop the dept table.




2. Data Manipulation Language(DML) Commands

Insert a single record into the debt table.

Insert more than a record into the emp table using a single insert command.

Update the emp table to set the salary of all employees to Rs15000/- who are working as ASP.

Create a pseudo table employee with the same structure as the table emp and insert rows into the table using select clauses.

Select employee name, job from the emp table.

Delete only those who are working as lecturers.

List the records in the emp table orderby salary in ascending order.

List the records in the emp table orderby salary in descending order.

Display only those employees whose deptno is 1.

Display deptno from the table employee avoiding the duplicate values.




3. Data Control Language, Transaction Control Language Commands

Develop a query to grant some privileges of employees table into departments table.

Develop a query to revoke some privileges of employees table from departments table.

Write a query to implement the save point.

Write a query to implement the rollback.

Write a query to implement the commit.




4. In built Functions

Display all the details of the records whose employee name starts with 'A'.

Display all the details of the records whose employee name does not starts with 'A'.

Display the rows whose salary ranges from 15000 to 30000.

Calculate the total and average salary amount of the emp table.

Count the total records in the emp table.

Determine the max and min salary and rename the column as max_salary and min_salary.

Find how many job titles are available in the employee table.

What is the difference between maximum and minimum salaries of employees in the organization?




5. Nested and Join Queries

Display all employee names and salary whose salary is greater than minimum salary of the company and job title starts with 'A‘.

Write a query to find all the employees who work in the same job as Arjun.

Write a query to display information about employees who earn more than any employee in dept 1.

Display the employee details, departments that the departments are same in both the emp and dept.

Display the employee details, departments that the departments are not same in both the emp and dept.

Write a query to display their employee names.

Display the details of those who draw the salary greater than the average salary.

Write a query to perform left outer join.

Write a query to perform the right outer join.

Write a query to perform a full outer join.




6. Set Operators

Display all the dept numbers available with the dept and emp tables avoiding duplicates.

Display all the dept numbers available with the dept and emp tables.

Display all the dept numbers available in emp and not in dept tables and vice versa.



7. Views
The organization wants to display only the details of the employees those who are ASP.

The organization wants to display only the details like empno, empname, deptno, deptname of the employees.

Execute the DML commands on the view created.

Drop a view.



8. Trigger




9. Procedure and Function




10. Create index and perform retrieval of data using the index field.



