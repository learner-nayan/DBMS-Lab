CREATE INDEX idx_empno ON employees (empno);

EXPLAIN SELECT * FROM employees WHERE empno = 4;

SELECT * FROM employees WHERE empno = 4;

DROP INDEX idx_empno ON employees;
