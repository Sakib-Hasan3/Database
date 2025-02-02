#NULL Operations in SQL

Overview

NULL in SQL represents missing or unknown values. Unlike regular values, NULL behaves uniquely in comparisons, arithmetic, and aggregate functions. This guide explains how to handle NULL values effectively in SQL.

1. NULL in Comparisons

NULL cannot be compared using standard operators like =, !=, <, or >.

SQL> SELECT * FROM employees WHERE salary IS NULL;
SELECT * FROM employees WHERE salary IS NOT NULL;

2. NULL in Arithmetic Operations

Any arithmetic operation with NULL results in NULL

SQL> SELECT 10 + NULL;  -- Returns NULL
SELECT 100 * NULL; -- Returns NULL
SELECT NULL / 5;   -- Returns NULL

✅ Handling NULL: Use COALESCE()

To replace NULL with a default value:
SQL> SELECT 10 + COALESCE(NULL, 0); -- Returns 10
SELECT salary + COALESCE(bonus, 0) FROM employees;


3. NULL in String Operations

String concatenation with NULL results in NULL.

SQL> SELECT 'Employee: ' || NULL;  -- NULL (PostgreSQL, Oracle)
SELECT CONCAT('Employee: ', NULL); -- NULL (MySQL)


4. NULL in Aggregate Functions

Most aggregate functions ignore NULL, except COUNT(*).

SQL> SELECT COUNT(*) FROM employees;      -- Includes NULL values
SELECT COUNT(salary) FROM employees; -- Excludes NULL values
SELECT SUM(salary) FROM employees;   -- Ignores NULL
SELECT AVG(salary) FROM employees;   -- Ignores NULL

5. NULL in GROUP BY & HAVING

NULL is treated as a separate group.

SQL> SELECT department_id, COUNT(*)
FROM employees
GROUP BY department_id;

6. NULL in ORDER BY

By default:

NULL values are sorted first in ASC

NULL values are sorted last in DESC

SQL> SELECT * FROM employees ORDER BY salary ASC;  -- NULLs first
SELECT * FROM employees ORDER BY salary DESC; -- NULLs last


7. NULL in JOINs

When joining tables, NULL values prevent matches.

SQL> SELECT *
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;


9. NULL in CHECK Constraints

A CHECK constraint ignores NULL values.

SQL> CREATE TABLE employees (
    id INT PRIMARY KEY,
    salary DECIMAL(10,2),
    CHECK (salary > 0) -- NULL values are not checked
);


10. NULL in UNIQUE Constraints

A UNIQUE constraint allows multiple NULL values.

SQL> CREATE TABLE employees (
    id INT PRIMARY KEY,
    email VARCHAR(255) UNIQUE
);


11. NULL with Default Values

If a column is NULL, DEFAULT values can be used:

SQL> CREATE TABLE employees (
    id INT PRIMARY KEY,
    salary DECIMAL(10,2) DEFAULT 50000
);


12. NULL in UNION and INTERSECT

NULL is treated like any other value in UNION but may not match in INTERSECT.

SQL> SELECT department_id FROM employees
UNION
SELECT department_id FROM departments;
















