--3.For each student who has retaken a course at least twice (i.e., the student has taken the course at
--least three times), show the course ID and the student's ID. Please display your results in order of course ID and do not display duplicate rows.
SELECT DISTINCT t.course_id, t.ID
FROM takes t
WHERE (SELECT COUNT(*) 
       FROM takes 
       WHERE takes.ID = t.ID AND takes.course_id = t.course_id) >= 3
ORDER BY t.course_id, t.ID;

--or
SELECT DISTINCT course_id ,ID from takes
GROUP BY course_id, ID
HAVING COUNT(*)>=3
order by course_id;