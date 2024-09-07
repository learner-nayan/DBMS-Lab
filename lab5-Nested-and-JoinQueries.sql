use dbms;

-- Display all employee names and salary whose salary is greater than minimum salary of the company and job title starts with 'A‘.
select ename,sal from pseudo_employees 
where sal > (select min(sal) from pseudo_employees) and job like 'A%';


-- Write a query to find all the employees who work in the same job as Arzu.
select * from pseudo_employees
where job=(select job from pseudo_employees where ename='Arzu');


-- Write a query to display information about employees who earn more than any employee in department 1.
select * from employees
where sal > any(select sal from employees where deptno=5);


-- Display the employee details, departments that the departments are same in both the emp and dept.
select E.*, D.dname, D.loc from employees as E 
join departments D on D.deptno=E.deptno;


-- Display the employee details, departments that the departments are not same in both the emp and dept.
select E.*, D.dname, D.loc from employees as E 
join departments D on D.deptno != E.deptno;


-- Write a query to display their employee names.
select ename from employees;


-- Display the details of those who draw the salary greater than the average salary.
select * from employees
where sal > (select avg(sal) from employees);


-- Write a query to perform left outer join.
select * from employees
left outer join departments
on employees.deptno=departments.deptno;


-- Write a query to perform the right outer join.
select * from employees
right outer join departments
on employees.deptno=departments.deptno;


-- Write a query to perform a full outer join.
select * from employees
left join departments
on employees.deptno=departments.deptno

	union
    
select * from employees
right outer join departments
on employees.deptno=departments.deptno;

