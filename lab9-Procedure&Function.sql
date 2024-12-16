-- Procedure
DELIMITER $$

CREATE PROCEDURE getTotalSalaryByDept(IN dept_id INT, OUT total_salary DECIMAL(10,2))
BEGIN
    SELECT SUM(sal) INTO total_salary
    FROM employees
    WHERE deptno = dept_id;
END $$

DELIMITER ;



-- Function
DELIMITER $$

CREATE FUNCTION checkEvenOdd(number INT)
RETURNS VARCHAR(10)
DETERMINISTIC
BEGIN
    IF MOD(number, 2) = 0 THEN
        RETURN 'Even';
    ELSE
        RETURN 'Odd';
    END IF;
END $$

DELIMITER ;


-- calling procedure
CALL getTotalSalaryByDept(5, @total_salary);
SELECT @total_salary;

-- dropping
DROP PROCEDURE getTotalSalaryByDept;   

-- calling function
SELECT checkEvenOdd(25) AS result;


