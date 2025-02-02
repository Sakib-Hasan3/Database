#All clause

The ALL clause in SQL is used to compare a value against every value in a subquery. The condition must be true for all values in the subquery result.


SQL >
SELECT DISTINCT name
FROM instructor
WHERE salary > ALL (
    SELECT salary
    FROM instructor
    WHERE dept_name = 'Biology'
);

Note : This will return only those instructors whose salary is greater than the highest salary in Biology.
If the highest Biology salary is 60,000, then only instructors earning more than 60,000 will be selected.
