-- 9. For each student who has retaken a course at least twice (i.e., the student has taken the course at least three times), 
-- show the course ID and the student's ID. Please display results in order of course ID and do not display duplicate rows.
SELECT DISTINCT t.ID, t.course_id
FROM takes t
GROUP BY t.ID, t.course_id
HAVING COUNT(*) >= 3
ORDER BY t.course_id;

