

-- 14. Find the set of all courses taught in the Fall-2009 as well as in Spring-2010.
SELECT DISTINCT s1.course_id 
FROM section s1 
JOIN section s2 
ON s1.course_id = s2.course_id 
WHERE s1.semester = 'Fall' AND s1.year = 2009 
AND s2.semester = 'Spring' AND s2.year = 2010;


