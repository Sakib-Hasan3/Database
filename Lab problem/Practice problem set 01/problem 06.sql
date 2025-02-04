-- 6. Output instructor names and buildings for each building an instructor has taught in. 
-- Include instructor names who have not taught any classes (the building name should be NULL in this case).
SELECT i.name, s.building
FROM instructor i
LEFT JOIN teaches t ON i.ID = t.ID
LEFT JOIN section s ON t.course_id = s.course_id AND t.sec_id = s.sec_id AND t.semester = s.semester AND t.year = s.year;

