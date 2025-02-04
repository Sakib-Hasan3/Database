-- 28. Find the names of all instructors that have a salary value greater than that of each instructor in the Biology department.
SELECT name 
FROM instructor 
WHERE salary > ALL (SELECT salary FROM instructor WHERE dept_name = 'Biology');

