

-- 35. Find the maximum across all departments of the total salary at each department.
SELECT MAX(total_salary) FROM (SELECT dept_name, SUM(salary) AS total_salary FROM instructor GROUP BY dept_name) AS dept_salaries;
