

-- 19. Find the average salary in each department.
SELECT dept_name, AVG(salary) AS avg_salary FROM instructor GROUP BY dept_name;


