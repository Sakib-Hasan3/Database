

-- 3. Find the ID and name of each student who has taken at least one Comp. Sci. course; make sure there are no duplicate names in the result.
SELECT DISTINCT s.ID, s.name 
FROM student s
JOIN takes t ON s.ID = t.ID
JOIN course c ON t.course_id = c.course_id
WHERE c.dept_name = 'Comp. Sci.';

