1.Name all instructors whose name is neither “Mozart” nor Einstein”

SQL>
SELECT DISTINCT name
FROM instructor
WHERE name NOT IN ('Mozart', 'Einstein');

2. Find the total number of (distinct) students who have taken course sections taught by the instructor with ID 10101

SQL>

SELECT COUNT(DISTINCT ID)
FROM takes
WHERE (course_id, sec_id, semester, year) IN (
    SELECT course_id, sec_id, semester, year
    FROM teaches
    WHERE teaches.ID = 10101
);


