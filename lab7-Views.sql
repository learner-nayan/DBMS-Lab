use dbms;

-- The organization wants to display only the details of the pseudo_employees those who are ASP.
create view asp_table as
(select * from pseudo_employees
where job='ASP');


-- The organization wants to display only the details like empno, ename, deptno, dname of the employees.
create view view_pseudo_employees as 
(select E.empno, E.ename, D.deptno, D.dname
from employees as E
join departments as D
on D.deptno=E.deptno);


-- Execute the DML commands on the view created.
select * from asp_table;
select * from view_pseudo_employees;

insert into asp_table
values(0, 'Mama', 'ASP', 9, 22000);

-- Becasue of  MySQL error code: 1175 during UPDATE in MySQL Workbench
SET SQL_SAFE_UPDATES = 0;

update asp_table 
set sal=8000
where empno=4;

delete from asp_table
where empno=0;


-- Drop a view.
drop view view_pseudo_employees;


-- To see all the views created in database
show full tables where Table_type = 'VIEW';

