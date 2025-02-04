

-- 13. Find the set of all courses taught either in Fall-2009 or in Spring-2010.
SELECT DISTINCT course_id FROM section WHERE (semester = 'Fall' AND year = 2009) OR (semester = 'Spring' AND year = 2010);


