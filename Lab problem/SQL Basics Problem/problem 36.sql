
-- 36. List all departments along with the number of instructors in each department.
SELECT dept_name, COUNT(ID) FROM instructor GROUP BY dept_name;