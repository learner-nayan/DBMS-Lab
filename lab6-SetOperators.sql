use dbms;

-- Display all the department numbers available with the departments and employees tables avoiding duplicates.
select deptno from departments
		union
select deptno from employees;


-- Display all the deptpartment numbers available with the departments and employees tables.
select deptno from departments
		union all
select deptno from employees;


-- Display all the department numbers available in employees table but not in departments table and vice versa.
select deptno from employees
		except 
select deptno from departments;


select deptno from departments
		except 
select deptno from employees;

-- minus in oracle = except in mysql
