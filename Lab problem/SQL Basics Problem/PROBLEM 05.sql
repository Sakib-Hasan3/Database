
-- 5. For all instructors in the university who have taught some course, find their names and the course ID of all courses they taught.
SELECT i.name, t.course_id 
FROM instructor i 
JOIN teaches t ON i.ID = t.ID;


