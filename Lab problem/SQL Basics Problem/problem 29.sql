-- 29. Find the departments that have the highest average salary.
SELECT dept_name 
FROM instructor 
GROUP BY dept_name 
HAVING AVG(salary) = (SELECT MAX(avg_salary) FROM (SELECT AVG(salary) AS avg_salary FROM instructor GROUP BY dept_name) AS temp);

