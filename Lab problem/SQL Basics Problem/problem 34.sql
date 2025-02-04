

-- 34. Find the average instructors' salaries of those departments where the average salary is greater than $42,000.
SELECT dept_name, AVG(salary) FROM instructor GROUP BY dept_name HAVING AVG(salary) > 42000;

