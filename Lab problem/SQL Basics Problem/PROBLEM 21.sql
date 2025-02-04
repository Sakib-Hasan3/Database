

-- 21. List out the departments where the average salary of the instructors is more than $42,000.
SELECT dept_name FROM instructor GROUP BY dept_name HAVING AVG(salary) > 42000;


