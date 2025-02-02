#Nested Subqueries in SQL

A nested subquery is a query inside another query..

1. Scalar Subqueries (Returns a Single Value)

These return a single value (one row, one column) and can be used in SELECT, WHERE, or HAVING clauses.

✅ Example: Get the name and salary of employees earning more than the average salary.

sql>
SELECT name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

>>The subquery calculates the average salary.
The main query returns employees earning above average.


2. Multi-Row Subqueries (Returns Multiple Values)

These return multiple rows but a single column and are used with IN, ANY, or ALL.

✅ Example: Get employees working in departments located in 'New York'.

sql>
SELECT name
FROM employees
WHERE department_id IN (
    SELECT department_id
    FROM departments
    WHERE location = 'New York'
);


>>The subquery fetches department IDs for 'New York'.
The main query finds employees in those departments.


3. Correlated Subqueries (Uses Outer Query Data)

These subqueries depend on the outer query for each row.

✅ Example: Get employees who earn more than the average salary of their own department.

sql>
SELECT e1.name, e1.salary, e1.department_id
FROM employees e1
WHERE salary > (
    SELECT AVG(e2.salary)
    FROM employees e2
    WHERE e1.department_id = e2.department_id
);

>> The subquery calculates department-wise average salary.
The main query finds employees above their department's average.
