#SET MEMBERSHIP

1. Find courses offered in Fall 2017 and in Spring 2018

SQL>SELECT DISTINCT course_id
FROM section
WHERE semester = 'Fall' 
AND year = 2017 
AND course_id IN (
    SELECT course_id
    FROM section
    WHERE semester = 'Spring' 
    AND year = 2018
);

2. Find courses offered in Fall 2017 but not in Spring 2018

SQL>SELECT DISTINCT course_id
FROM section
WHERE semester = 'Fall' 
AND year = 2017 
AND course_id NOT IN (
    SELECT course_id
    FROM section
    WHERE semester = 'Spring' 
    AND year = 2018
);



