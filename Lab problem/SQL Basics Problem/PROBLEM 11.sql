
-- 11. Find the instructor names and the courses they taught for all instructors in the Biology department who have taught some course.
SELECT i.name, t.course_id 
FROM instructor i 
JOIN teaches t ON i.ID = t.ID 
WHERE i.dept_name = 'Biology';


