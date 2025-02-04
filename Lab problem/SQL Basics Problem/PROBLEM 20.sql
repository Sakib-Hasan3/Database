

-- 20. Find the number of instructors in each department who teach a course in the Spring-2010 semester.
SELECT i.dept_name, COUNT(DISTINCT t.ID) AS num_instructors
FROM instructor i
JOIN teaches t ON i.ID = t.ID
WHERE t.semester = 'Spring' AND t.year = 2010
GROUP BY i.dept_name;

