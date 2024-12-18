SHOW GRANTS FOR 'root'@'';

CREATE USER 'hero'@'localhost' IDENTIFIED BY 'heronum1';

SHOW GRANTS FOR 'hero'@'localhost';

GRANT SELECT, INSERT, UPDATE ON departments TO 'hero'@'localhost';

REVOKE SELECT, INSERT, UPDATE ON departments FROM 'hero'@'localhost';

SHOW GRANTS FOR CURRENT_USER;



-- for commit , rollback and savepoint

SELECT * FROM employees;


START TRANSACTION;

-- Step 1: Insert a record
INSERT INTO employees (empno, ename, job, deptno, sal) VALUES (5, 'Hero', 'Plumber', 1, 17000);

-- Step 2: Set a savepoint
SAVEPOINT savepoint_1;

-- Becasue of  MySQL error code: 1175 during UPDATE in MySQL Workbench
SET SQL_SAFE_UPDATES = 0;

-- Step 3: Perform another action
UPDATE employees SET sal = 15000 WHERE ename = 'Hero';

-- Roll back to the savepoint
ROLLBACK TO savepoint_1;

-- Removes savepoint from the transaction log)
RELEASE SAVEPOINT savepoint_1;

-- Commit the transaction
COMMIT;


