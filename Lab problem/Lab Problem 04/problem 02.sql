-- 2.Display a list of all instructors, showing each instructor's ID and the number of sections taught.
--Make sure to show the number of sections as 0 for instructors who have not taught any section.
SELECT i.ID, COALESCE(COUNT(t.course_id), 0) AS number_of_sections
FROM instructor i
LEFT JOIN teaches t ON i.ID = t.ID
GROUP BY i.ID
ORDER BY  number_of_sections;
--or
SELECT instructor.ID, COUNT(teaches.sec_id) AS cnt 
FROM instructor 
LEFT JOIN teaches ON instructor.ID = teaches.ID 
GROUP BY instructor.ID 
ORDER BY cnt ASC;
