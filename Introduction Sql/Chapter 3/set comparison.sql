
1. Find names of instructors with salary greater than that of some (at least one) instructor in the Biology department.

SQL>
SELECT DISTINCT T.name
FROM instructor AS T, instructor AS S
WHERE T.salary > S.salary 
AND S.dept_name = 'Biology';


2.USING SOME CLAUSE 

SQL> 
SELECT DISTINCT name
FROM instructor
WHERE salary > SOME (
    SELECT salary
    FROM instructor
    WHERE dept_name = 'Biology'
);


3.USING ANY CLAUSE

SQL>
SELECT DISTINCT name
FROM instructor
WHERE salary > SOME (
    SELECT salary
    FROM instructor
    WHERE dept_name = 'Biology'
);
