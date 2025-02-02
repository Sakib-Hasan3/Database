#some clause 

The SOME clause in SQL is used to compare a value against a set of values returned by a subquery. It works similarly to the ANY clause and is used with comparison operators (=, >, <, >=, <=, !=).

>Syntax
column_name operator SOME (subquery)


The operator (e.g., >, <, =) is applied to at least one value in the subquery result.
If any value in the subquery meets the condition, the row is included in the result.


Example :

SELECT DISTINCT name
FROM instructor
WHERE salary > ANY (
    SELECT salary
    FROM instructor
    WHERE dept_name = 'Biology'
);


Note : 
>SOME vs ANY
SOME and ANY are functionally identical in most databases.
Both mean “greater than at least one value” in the subquery.
