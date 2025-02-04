

-- 24. Find all the courses taught in the Fall-2009 semester but not in the Spring-2010 semester.
SELECT DISTINCT course_id 
FROM section 
WHERE semester = 'Fall' AND year = 2009 
AND course_id NOT IN (SELECT course_id FROM section WHERE semester = 'Spring' AND year = 2010);


