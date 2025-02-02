1. Find the names and average salaries of all departments whose average salary is greater than 42000


SQL> 
SELECT dept_name, AVG(salary) AS avg_salary
FROM instructor
GROUP BY dept_name
HAVING AVG(salary) > 42000;


Note:  the having clause = are applied after the formation of groups 
       the where clause = are applied before forming groups
