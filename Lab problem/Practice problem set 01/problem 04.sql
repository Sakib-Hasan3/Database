-- 4. Find the course ID, section ID, and building for each section of a Biology course.
SELECT s.course_id, s.sec_id, s.building 
FROM section s
JOIN course c ON s.course_id = c.course_id
WHERE c.dept_name = 'Biology';

