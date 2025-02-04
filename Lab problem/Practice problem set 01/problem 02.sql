-- 2. Find the IDs of all students who were taught by an instructor named Einstein; make sure there are no duplicates in the result.
SELECT DISTINCT t.ID 
FROM takes t
JOIN teaches te ON t.course_id = te.course_id AND t.sec_id = te.sec_id AND t.semester = te.semester AND t.year = te.year
JOIN instructor i ON te.ID = i.ID
WHERE i.name = 'Einstein';

