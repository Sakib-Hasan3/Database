

-- 6. Find the names of all instructors whose salary is greater than at least one instructor in the Biology department.
SELECT DISTINCT i1.name 
FROM instructor i1 
WHERE i1.salary > (SELECT MIN(i2.salary) FROM instructor i2 WHERE i2.dept_name = 'Biology');


