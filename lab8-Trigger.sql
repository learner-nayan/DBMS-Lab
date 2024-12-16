
-- MySQL uses semicolons (;) as the default statement delimiter, but inside a trigger body, 
-- the semicolon is also used to separate statements, so we need to change the delimiter temporarily to avoid conflicts.

DELIMITER $$

CREATE TRIGGER store_employee_before_delete
BEFORE DELETE ON employees
FOR EACH ROW
BEGIN
    -- Insert the deleted employee's data into the pseudo_employees table
    INSERT INTO pseudo_employees (empno, ename, job, deptno, sal)
    VALUES (OLD.empno, OLD.ename, OLD.job, OLD.deptno, OLD.sal);
END $$

DELIMITER ;

DELETE FROM employees WHERE empno = 105;

select * from employees;
select * from pseudo_employees;
