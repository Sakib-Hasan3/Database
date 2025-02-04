-- 10. Find the names of Biology students who have taken at least 3 Accounting courses.
SELECT s.name
FROM student s
JOIN takes t ON s.ID = t.ID
JOIN course c ON t.course_id = c.course_id
WHERE s.dept_name = 'Biology' AND c.dept_name = 'Accounting'
GROUP BY s.ID, s.name
HAVING COUNT(DISTINCT t.course_id) >= 3;

