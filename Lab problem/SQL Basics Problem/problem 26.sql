-- 26. Find the total number of (distinct) students who have taken course sections taught by the instructor with ID 110011.
SELECT COUNT(DISTINCT t.ID)
FROM takes t
JOIN teaches te ON t.course_id = te.course_id 
AND t.sec_id = te.sec_id 
AND t.semester = te.semester 
AND t.year = te.year
WHERE te.ID = '110011';

