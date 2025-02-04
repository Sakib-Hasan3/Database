
-- 31. Find all students who have taken all the courses offered in the Biology department.
SELECT ID 
FROM student 
WHERE NOT EXISTS (
    SELECT course_id 
    FROM course 
    WHERE dept_name = 'Biology' 
    EXCEPT 
    SELECT course_id 
    FROM takes 
    WHERE student.ID = takes.ID
);

